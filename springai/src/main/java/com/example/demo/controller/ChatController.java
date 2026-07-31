package com.example.demo.controller;

import com.example.demo.tool.ProductOrderTool;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.client.advisor.MessageChatMemoryAdvisor;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.ai.chat.messages.UserMessage;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;
import tools.jackson.databind.ObjectMapper;

import java.util.Map;

@RestController
public class ChatController {
    @Autowired
    private ChatModel chatModel;

    @PostMapping("/chats")
    public String postChats(@RequestBody String message) {
        return chatModel.call(message);
    }

    @Autowired
    private ChatMemory chatMemory;

    @PostMapping("/chats/model")
    public String postChatModel(@RequestBody String message, @RequestParam("id") String id) {
        chatMemory.add(id, UserMessage.builder().text(message).build());
        var response = chatModel.call(Prompt.builder().messages(chatMemory.get(id)).build());
        chatMemory.add(id, response.getResult().getOutput());
        return response.getResult().getOutput().getText();
    }

    @Autowired
    private ChatClient chatClient;

    @PostMapping("/chats/client")
    public String postChatClient(@RequestBody String message, @RequestParam("id") String id) {
        return chatClient.prompt()
                .advisors(MessageChatMemoryAdvisor.builder(chatMemory).build())
                .advisors(spec -> spec.param(ChatMemory.CONVERSATION_ID, id))
                .user(message)
                .call().content();
    }

    private static final String systemMessage = """
        당신은 캠퍼스 쇼핑몰의 고객지원 상담사입니다.
        다음 원칙에 따라 답변하세요.
        1. 확인된 사실에 근거하여 정확하게 답변합니다.
        2. 제공된 정보만으로 답변할 수 없거나 확실하지 않은 내용은 추측하지 않습니다.
        3. 답변하기 어려운 문의는 고객센터 02-500-5000으로 안내합니다.
        4. 답변은 짧고 명확하게 작성합니다.
        5. 답변은 순수 텍스트(Plain Text) 형식으로 작성하며, Markdown 문법은 사용하지 않습니다.
        6. 사용자가 인사만 하거나 구체적인 문의 없이 말을 건 경우에는 간단히 인사한 뒤 문의 내용을 요청합니다.
        7. 문의 내용을 요청할 때는 문의 유형이나 예시를 나열하지 않습니다.
        """;

    @Autowired
    private ProductOrderTool productOrderTool;

    @PostMapping("/chats/tool")
    public String postChatsTool(@RequestBody String message) {
        return chatClient.prompt()
                .system(systemMessage)
                .user(message)
                .tools(productOrderTool)
                .toolContext(Map.of(
                        "username", "seojun",
                        "name", "윤서준"
                ))
                .call().content();
    }

    @Autowired
    private ObjectMapper objectMapper;

    @PostMapping(value="/chats/stream", produces = MediaType.TEXT_EVENT_STREAM_VALUE)
    public Flux<String> postChatsStream(@RequestBody String message) {
        return chatClient.prompt()
                .user(message)
                .stream()
                .content()
                .map(objectMapper::writeValueAsString);
    }
}
