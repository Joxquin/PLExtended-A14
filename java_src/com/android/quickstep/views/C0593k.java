package com.android.quickstep.views;

import com.android.launcher3.util.RunnableList;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import java.util.function.Consumer;
/* renamed from: com.android.quickstep.views.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0593k implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5977a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5978b;

    public /* synthetic */ C0593k(int i4, Object obj) {
        this.f5977a = i4;
        this.f5978b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5977a) {
            case 0:
                GroupedTaskView.S((GroupedTaskView) this.f5978b, (ThumbnailData) obj);
                return;
            case 1:
                GroupedTaskView.R((GroupedTaskView) this.f5978b, (Task) obj);
                return;
            default:
                GroupedTaskView.Q((RunnableList) this.f5978b, (Boolean) obj);
                return;
        }
    }
}
