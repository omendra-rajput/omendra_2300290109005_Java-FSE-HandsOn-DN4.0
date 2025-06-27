import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class Assertions {

    @Test
    void testStringLength() {
        String str = "JUnit";
        assertEquals(5, str.length());
    }

    @Test
    void testSubstring() {
        String str = "Mockito";
        assertTrue(str.contains("Mock"));
    }

    @Test
    void testNullCheck() {
        String s = null;
        assertNull(s);
    }

    @Test
    void testNotNullCheck() {
        String s = "test";
        assertNotNull(s);
    }
}
