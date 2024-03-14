package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import j.C1097o;
import j.InterfaceC1074E;
/* loaded from: classes.dex */
public class NavigationMenuView extends RecyclerView implements InterfaceC1074E {
    public NavigationMenuView(Context context) {
        this(context, null);
    }

    @Override // j.InterfaceC1074E
    public final void a(C1097o c1097o) {
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        setLayoutManager(new LinearLayoutManager(1));
    }
}
