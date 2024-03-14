package io.grpc.binder.internal;
/* loaded from: classes.dex */
enum Inbound$State {
    UNINITIALIZED,
    INITIALIZED,
    PREFIX_DELIVERED,
    ALL_MESSAGES_DELIVERED,
    SUFFIX_DELIVERED,
    CLOSED
}
