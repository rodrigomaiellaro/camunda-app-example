package com.workflow.event;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;

import javax.inject.Named;

@Named("Calcular")
public class CalculaValorTotal implements JavaDelegate {

    @Override
    public void execute(DelegateExecution execution) throws Exception {
        double principal = (long) execution.getVariable("principal") / 100;
        long meses = (long) execution.getVariable("meses");
        double taxa = (double) execution.getVariable("taxa");
        double montante = principal * Math.pow((1 + taxa), meses);
        double jurosTotal = montante - principal;

        execution.setVariable("total", montante);
        execution.setVariable("taxa", taxa);
        execution.setVariable("jurosTotal", jurosTotal);

        System.out.println("Atividade " + execution.getCurrentActivityName());
    }
}