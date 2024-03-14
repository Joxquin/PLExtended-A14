package com.android.launcher3.logging;

import java.security.SecureRandom;
import java.util.Random;
/* loaded from: classes.dex */
public final class InstanceIdSequence {
    private final Random mRandom = new SecureRandom();
    protected final int mInstanceIdMax = Math.min(Math.max(1, 1048576), 1048576);

    public final InstanceId newInstanceId() {
        return newInstanceIdInternal(this.mRandom.nextInt(this.mInstanceIdMax) + 1);
    }

    public InstanceId newInstanceIdInternal(int i4) {
        return new InstanceId(i4);
    }
}
