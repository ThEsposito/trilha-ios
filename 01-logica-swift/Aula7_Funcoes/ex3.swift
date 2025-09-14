func ehBissexto(ano: Int) -> Bool{
    return ((ano%4==0) && (!(ano%100==0) || ano % 400==0))
}

print(ehBissexto(ano: 2028))