NAMESPACE TankLib

    INTERFACE IValve

        METHOD Open            
        END_METHOD

        METHOD Close             
        END_METHOD

        METHOD GetState : ValveState            
        END_METHOD

        METHOD WriteCyclic
            VAR_OUTPUT
                outPutSignal:BOOL;
            END_VAR       
        END_METHOD
        
    END_INTERFACE
    
END_NAMESPACE