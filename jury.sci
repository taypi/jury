function [estavel] = jury(poli)
    estavel = 1;
    inverse = coeff(poli);
    vector = flipdim(inverse,2);
    numOfRoots = 0;
    hasAZero = 0;
    disp("JURY: ");
    if(find(vector==0) == [])
        for i=1:length(vector)
            disp(vector);
            inverse = flipdim(vector,2);
            disp(inverse);
            disp("----------------------------------------");
            alpha = -vector($)/vector(1);
            vector = vector + alpha * inverse;
            vector($) = [];
            if(vector(1) <= 0) then
                estavel = 0;
                if(vector < 0) then
                    numOfRoots = numOfRoots + 1;
                else
                    hasAZero = 1;
                    break;
                end
            end
        end
    else
        disp("ERRO: Algum coeficente igual a zero!")
    end
    
    disp(roots(poli), "Raizes: ")
    if (estavel) then
        disp("Sistema estável.");
    else
        disp("Sistema instável.");
        if (~hasAZero) then
            disp(numOfRoots, "Numero de raizes fora do circulo unitario: ");
        else
            printf(" Contem a0 = 0, nao e possivel determinar quantidade de razies fora do circulo unitario.");
        end
    end

endfunction

disp("CAP 5 QUESTAO E")
//-----------------------------
p1 = z^2-1.5*z+0.9;
disp("p1 = z^2-1.5*z+0.9", "Polinomio:");
jury(p1);
//-----------------------------
p2 = z^3-3*z^2+2*z-0.5;
disp("p2 = z^3-3*z^2+2*z-0.5", "Polinomio:");
jury(p2);
//-----------------------------
p3 = z^3-2*z^2+2*z-0.5;
disp("p3 = z^3-2*z^2+2*z-0.5", "Polinomio:");
jury(p3);
//-----------------------------
p4 = z^3+5*z^2+0.25*z-1.25;
disp("p4 = z^3+5*z^2+0.25*z-1.25", "Polinomio:");
jury(p4);
//-----------------------------
p5 = z^3-1.7*z^2+1.7*z-0.7;
disp("z^3-1.7*z^2+1.7*z-0.7", "Polinomio:");
jury(p5);
//-----------------------------
p6 = z^3-1.7*z^2+1.7*z-0.7;
disp("z^3-1.7*z^2+1.7*z-0.7", "Polinomio:");
jury(p6);
//-----------------------------
disp("POLINOMIOS DA CABECA", "Polinomio:")
//-----------------------------
n1 = 10*z^6+5*z^5+z^4+z^3+2*z^2+3*z+4;
disp("10*z^6+5*z^5+z^4+z^3+2*z^2+3*z+4", "Polinomio:");
jury(n1);
//-----------------------------
