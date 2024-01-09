USING TankLib;

NAMESPACE UserAsserts
    // Assertions for enumerations
    FUNCTION Equal : BOOL
        VAR_INPUT
                expected:  ValveState;
                actual:  ValveState;
        END_VAR
        Equal := expected = actual;
    END_FUNCTION
END_NAMESPACE