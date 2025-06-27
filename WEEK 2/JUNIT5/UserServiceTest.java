import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

public class UserServiceTest {

    @Test
    void testGetUsername() {
        UserRepository mockRepo = mock(UserRepository.class);
        when(mockRepo.getUsername(1)).thenReturn("Ommy");

        UserService userService = new UserService(mockRepo);
        assertEquals("Ommy", userService.fetchUsername(1));
    }
}

class UserService {
    private final UserRepository repo;

    UserService(UserRepository repo) {
        this.repo = repo;
    }

    public String fetchUsername(int userId) {
        return repo.getUsername(userId);
    }
}

interface UserRepository {
    String getUsername(int userId);
}
