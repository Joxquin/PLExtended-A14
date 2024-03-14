package com.google.android.apps.nexuslauncher;

import android.content.Intent;
import android.graphics.Bitmap;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final Bitmap f7486a;

    /* renamed from: b  reason: collision with root package name */
    public final Intent f7487b;

    public o(Bitmap icon, Intent intent) {
        kotlin.jvm.internal.h.e(icon, "icon");
        this.f7486a = icon;
        this.f7487b = intent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            return kotlin.jvm.internal.h.a(this.f7486a, oVar.f7486a) && kotlin.jvm.internal.h.a(this.f7487b, oVar.f7487b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7487b.hashCode() + (this.f7486a.hashCode() * 31);
    }

    public final String toString() {
        return "TargetInfo(icon=" + this.f7486a + ", intent=" + this.f7487b + ")";
    }
}
