package com.android.launcher3.taskbar;

import com.android.launcher3.taskbar.NavbarButtonsViewController;
import java.util.function.Consumer;
/* renamed from: com.android.launcher3.taskbar.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0452s implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5159a;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5159a) {
            case 0:
            default:
                ((NavbarButtonsViewController.StatePropertyHolder) obj).endAnimation();
                return;
        }
    }
}
