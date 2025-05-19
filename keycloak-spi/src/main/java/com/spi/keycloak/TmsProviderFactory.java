package com.spi.keycloak;

import org.jboss.logging.Logger;
import org.keycloak.Config;                     // <-- IMPORT THIS

import org.keycloak.events.EventListenerProvider;
import org.keycloak.events.EventListenerProviderFactory;
import org.keycloak.models.KeycloakSession;
import org.keycloak.models.KeycloakSessionFactory;

public class TmsProviderFactory implements EventListenerProviderFactory {
    private static final Logger logger = Logger.getLogger(TmsProviderFactory.class);
    private static final String PROVIDER_ID = "tms-event-listener";

    @Override
    public EventListenerProvider create(KeycloakSession session) {
        return new TmsProvider();
    }

    @Override
    public void init(Config.Scope config) {
        logger.info("[TmsProviderFactory] init");
    }

    @Override
    public void postInit(KeycloakSessionFactory factory) {
        // post-initialization if needed
    }

    @Override
    public void close() {
        logger.info("[TmsProviderFactory] close");
    }

    @Override
    public String getId() {
        return PROVIDER_ID;
    }
}