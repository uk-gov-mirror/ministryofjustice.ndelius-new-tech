package interfaces;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

public interface AnalyticsStore {

    void recordEvent(Map<String, Object> data);

    CompletableFuture<List<Map<String, Object>>> recentEvents(int limit);

    CompletableFuture<Map<Integer, Long>> pageVisits();

    CompletableFuture<Long> pageVisits(String eventType, LocalDateTime from);

    CompletableFuture<Long> uniquePageVisits(String eventType, LocalDateTime from);

    CompletableFuture<Map<Integer, Long>> rankGrouping(String eventType, LocalDateTime from);

    CompletableFuture<Map<String, Long>> eventOutcome(String eventType, LocalDateTime from);

    CompletableFuture<Boolean> isUp();
}
