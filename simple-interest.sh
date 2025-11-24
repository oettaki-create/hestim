#!/bin/bash
# Simple Interest Calculator

echo "Calculateur d'Intérêt Simple"
echo "=============================="

# Demander les entrées
read -p "Entrez le principal (montant initial) : " principal
read -p "Entrez le taux d'intérêt (%) : " rate
read -p "Entrez le temps (années) : " time

# Calculer l'intérêt simple
# Formule : SI = (P × R × T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Afficher le résultat
echo ""
echo "Principal : $principal"
echo "Taux d'intérêt : $rate%"
echo "Durée : $time ans"
echo "Intérêt Simple : $interest"
echo "Montant Total : $(echo "scale=2; $principal + $interest" | bc)"
chmod +x simple-interest.sh
