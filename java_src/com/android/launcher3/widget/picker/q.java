package com.android.launcher3.widget.picker;

import android.util.Pair;
import com.android.launcher3.widget.model.WidgetsListContentEntry;
import com.android.launcher3.widget.picker.WidgetsTwoPaneSheet;
import java.util.Collections;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class q implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ WidgetsTwoPaneSheet.AnonymousClass3 f5407a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ WidgetsRowViewHolder f5408b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ WidgetsListContentEntry f5409c;

    public /* synthetic */ q(WidgetsTwoPaneSheet.AnonymousClass3 anonymousClass3, WidgetsRowViewHolder widgetsRowViewHolder, WidgetsListContentEntry widgetsListContentEntry) {
        this.f5407a = anonymousClass3;
        this.f5408b = widgetsRowViewHolder;
        this.f5409c = widgetsListContentEntry;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        WidgetsListTableViewHolderBinder widgetsListTableViewHolderBinder;
        WidgetsTwoPaneSheet.AnonymousClass3 anonymousClass3 = this.f5407a;
        WidgetsRowViewHolder widgetsRowViewHolder = this.f5408b;
        WidgetsListContentEntry widgetsListContentEntry = this.f5409c;
        widgetsListTableViewHolderBinder = WidgetsTwoPaneSheet.this.mWidgetsListTableViewHolderBinder;
        widgetsListTableViewHolderBinder.bindViewHolder(widgetsRowViewHolder, widgetsListContentEntry, 3, Collections.singletonList((Pair) obj));
    }
}
