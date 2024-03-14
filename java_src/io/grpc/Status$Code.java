package io.grpc;

import O2.e;
import X2.L0;
/* loaded from: classes.dex */
public enum Status$Code {
    OK(0),
    CANCELLED(1),
    UNKNOWN(2),
    INVALID_ARGUMENT(3),
    DEADLINE_EXCEEDED(4),
    NOT_FOUND(5),
    ALREADY_EXISTS(6),
    PERMISSION_DENIED(7),
    RESOURCE_EXHAUSTED(8),
    FAILED_PRECONDITION(9),
    ABORTED(10),
    OUT_OF_RANGE(11),
    UNIMPLEMENTED(12),
    INTERNAL(13),
    UNAVAILABLE(14),
    DATA_LOSS(15),
    UNAUTHENTICATED(16);
    
    private final int value;
    private final byte[] valueAscii;

    Status$Code(int i4) {
        this.value = i4;
        this.valueAscii = Integer.toString(i4).getBytes(e.f1510a);
    }

    public static byte[] a(Status$Code status$Code) {
        return status$Code.valueAscii;
    }

    public final L0 c() {
        return (L0) L0.f2125d.get(this.value);
    }

    public final int d() {
        return this.value;
    }
}
