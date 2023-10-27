require 'spec_helper'
require_relative '../calculator'

describe "Calculadora" do
    let (:calculator) {Calculator.new}
    
    it "suma dos numeros positivos" do
        expect(calculator.add(2, 3)).to eq(5)
    end

    it "resta dos numeros positivos" do
        expect(calculator.subtract(5, 2)).to eq(3)
    end

    it "multiplica dos numeros positivos" do
        expect(calculator.multiply(5, 5)).to eq(25)
    end

    it "divide dos numeros positivos" do
        expect(calculator.divide(10, 2)).to eq(5)
    end

    it "divide por cero" do
        expect { calculator.divide(10, 0) }.to raise_error(StandardError, 'no se puede dividir por 0')
    end
end
