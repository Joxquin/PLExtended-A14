package com.android.launcher3.popup;

import com.android.launcher3.popup.SystemShortcut;
import java.util.Objects;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4928a;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f4928a) {
            case 0:
                return Objects.nonNull((SystemShortcut) obj);
            case 1:
                int i4 = PopupContainerWithArrow.f4922d;
                return !(((SystemShortcut) obj) instanceof SystemShortcut.Widgets);
            default:
                int i5 = PopupContainerWithArrow.f4922d;
                return ((SystemShortcut) obj) instanceof SystemShortcut.Widgets;
        }
    }
}
