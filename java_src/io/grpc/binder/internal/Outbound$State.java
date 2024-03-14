package io.grpc.binder.internal;
/* loaded from: classes.dex */
enum Outbound$State {
    INITIAL,
    PREFIX_SENT,
    ALL_MESSAGES_SENT,
    SUFFIX_SENT,
    CLOSED
}
