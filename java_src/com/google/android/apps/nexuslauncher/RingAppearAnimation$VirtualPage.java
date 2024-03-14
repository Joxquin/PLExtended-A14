package com.google.android.apps.nexuslauncher;

import com.android.launcher3.CellLayout;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class RingAppearAnimation$VirtualPage {

    /* renamed from: a  reason: collision with root package name */
    public final List f6487a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6488b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6489c;

    /* renamed from: d  reason: collision with root package name */
    public final int f6490d;

    public RingAppearAnimation$VirtualPage(List actualPages) {
        kotlin.jvm.internal.h.e(actualPages, "actualPages");
        this.f6487a = actualPages;
        Iterator it = actualPages.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            i4 += ((CellLayout) it.next()).getCountX();
        }
        this.f6488b = i4;
        Iterator it2 = this.f6487a.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        int countY = ((CellLayout) it2.next()).getCountY();
        while (it2.hasNext()) {
            int countY2 = ((CellLayout) it2.next()).getCountY();
            if (countY < countY2) {
                countY = countY2;
            }
        }
        this.f6489c = countY;
        this.f6490d = ((CellLayout) kotlin.collections.s.h(this.f6487a)).getCountX();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RingAppearAnimation$VirtualPage) && kotlin.jvm.internal.h.a(this.f6487a, ((RingAppearAnimation$VirtualPage) obj).f6487a);
    }

    public final int hashCode() {
        return this.f6487a.hashCode();
    }

    public final String toString() {
        return "VirtualPage(actualPages=" + this.f6487a + ")";
    }
}
