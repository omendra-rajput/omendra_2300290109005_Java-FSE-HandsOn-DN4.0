import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class AAA Pattern {

    BankAccount account;

    @BeforeEach
    void setup() {
        account = new BankAccount();
    }

    @AfterEach
    void teardown() {
        account = null;
    }

    @Test
    void testDeposit() {
        // Arrange is in @BeforeEach
        // Act
        account.deposit(500);
        // Assert
        assertEquals(500, account.getBalance());
    }

    @Test
    void testWithdraw() {
        account.deposit(1000);
        account.withdraw(300);
        assertEquals(700, account.getBalance());
    }
}
