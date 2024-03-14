package com.android.quickstep;

import com.android.launcher3.taskbar.TaskbarManager;
import com.android.quickstep.TouchInteractionService;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class W1 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5541a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ float f5542b;

    public /* synthetic */ W1(float f4, int i4) {
        this.f5541a = i4;
        this.f5542b = f4;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5541a) {
            case 0:
                ((TaskbarManager) obj).onNavButtonsDarkIntensityChanged(this.f5542b);
                return;
            default:
                TouchInteractionService.TISBinder.lambda$onAssistantVisibilityChanged$10(this.f5542b, (TouchInteractionService) obj);
                return;
        }
    }
}
