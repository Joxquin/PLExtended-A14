package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import d.C0792a;
/* loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* renamed from: d  reason: collision with root package name */
    public final int f2484d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2485e;

    public AlertController$RecycleListView(Context context) {
        this(context, null);
    }

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0792a.f8750t);
        this.f2485e = obtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.f2484d = obtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}
