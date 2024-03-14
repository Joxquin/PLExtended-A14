package com.android.systemui.plugins;

import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import n1.j;
/* loaded from: classes.dex */
public abstract class PluginFragment extends Fragment implements j {

    /* renamed from: d  reason: collision with root package name */
    public Context f6196d;

    @Override // android.app.Fragment
    public final Context getContext() {
        return this.f6196d;
    }

    @Override // n1.j
    public final void k(Context context) {
        this.f6196d = context;
    }

    @Override // android.app.Fragment
    public final LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return super.onGetLayoutInflater(bundle).cloneInContext(getContext());
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }
}
