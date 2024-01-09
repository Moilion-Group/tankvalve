NAMESPACE TankLib
    
    CLASS PUBLIC AlwaysOFFValve IMPLEMENTS IValve
        VAR PRIVATE
        _valveState:BOOL;
        END_VAR

        METHOD PUBLIC Open 
            _valveState := FALSE;
        END_METHOD

        METHOD PUBLIC Close
            _valveState:=TRUE;
        END_METHOD
        
        METHOD PUBLIC GetState:ValveState
            if(_valveState) Then
                GetState:=ValveState#Closed;
            ELSE
                GetState:=ValveState#Opened;
            END_IF;
        END_METHOD

        METHOD PUBLIC WriteCyclic 
            VAR_OUTPUT
                outPutSignal:BOOL;
            END_VAR
            outPutSignal:=_valveState;
        END_METHOD
    END_CLASS

END_NAMESPACE
