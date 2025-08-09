import org.junit.jupiter.api.Test;
import static org.mockito.Mockito.*;

public class NotificationServiceTest {

    @Test
    void testSendNotification() {
        EmailSender mockEmailSender = mock(EmailSender.class);

        NotificationService service = new NotificationService(mockEmailSender);
        service.send("test@example.com", "Hello!");

        verify(mockEmailSender).sendEmail("test@example.com", "Hello!");
        verifyNoMoreInteractions(mockEmailSender);
    }
}

class NotificationService {
    private final EmailSender sender;

    NotificationService(EmailSender sender) {
        this.sender = sender;
    }

    public void send(String to, String msg) {
        sender.sendEmail(to, msg);
    }
}

interface EmailSender {
    void sendEmail(String to, String msg);
}
