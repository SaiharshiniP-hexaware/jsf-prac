package com.hexa.listener;

import javax.faces.event.PhaseEvent;
import javax.faces.event.PhaseId;
import javax.faces.event.PhaseListener;

public class MyPhaseListener implements PhaseListener {

	@Override
	public void afterPhase(PhaseEvent event) {
		System.out.println("after  "+ event.getPhaseId());
		if(event.getPhaseId()== PhaseId.RENDER_RESPONSE){
			System.out.println(event.getFacesContext().
					getViewRoot().getViewId());
		}

	}

	@Override
	public void beforePhase(PhaseEvent event) {
		System.out.println("before " + event.getPhaseId());
	}

	@Override
	public PhaseId getPhaseId() {
		return PhaseId.ANY_PHASE;
	}

}
