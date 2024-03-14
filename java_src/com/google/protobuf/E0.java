package com.google.protobuf;

import java.util.Map;
/* loaded from: classes.dex */
public final class E0 extends L0 {
    @Override // com.google.protobuf.L0
    public final void h() {
        if (!this.f8560g) {
            for (int i4 = 0; i4 < e(); i4++) {
                ((A) d(i4).getKey()).b();
            }
            for (Map.Entry entry : f()) {
                ((A) entry.getKey()).b();
            }
        }
        super.h();
    }
}
