NAMESPACE TankValvelib
    TYPE
        ValveState : (Opened, Closed, Undefined, Error) := Closed;
    END_TYPE
    CLASS PUBLIC Valve IMPLEMENTS IValve
        VAR
         _valveState:BOOL;   
        END_VAR
        
        METHOD PUBLIC Open 
            _valveState:=TRUE;
        END_METHOD

        METHOD PUBLIC Close 
            _valveState:=FALSE;
            ;
        END_METHOD

        
        
        METHOD PUBLIC GetState : ValveState
            IF _valveState THEN
                GetState:=ValveState#Opened;
            ELSE
                GetState:=ValveState#Closed;
            END_IF;
            ;
        END_METHOD

        METHOD PUBLIC WriteCyclic 
            VAR_OUTPUT
                valveState:BOOL;
            END_VAR
            valveState:=_valveState;
            ;
        END_METHOD

    END_CLASS

END_NAMESPACE