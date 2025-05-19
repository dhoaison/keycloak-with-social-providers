package com.spi.keycloak;

import org.jboss.logging.Logger;
import org.keycloak.events.Event;
import org.keycloak.events.EventListenerProvider;
import org.keycloak.events.admin.AdminEvent;

public class TmsProvider implements EventListenerProvider {
    private static final Logger logger = Logger.getLogger(TmsProvider.class);

    @Override
    public void onEvent(Event event) {
        switch (event.getType()) {
            case REGISTER:
                logger.infof("[TmsProvider] User registered: %s", event.getUserId());
                break;
            case LOGIN:
                logger.infof("[TmsProvider] User login: %s", event.getUserId());
                break;
            default:
                // other event types if needed
                break;
        }
    }

    @Override
    public void onEvent(AdminEvent adminEvent, boolean includeRepresentation) {
        logger.infof("[TmsProvider] Admin event: %s on %s",
                     adminEvent.getOperationType(),
                     adminEvent.getResourcePath());
    }

    @Override
    public void close() {
        // cleanup if needed
    }
}