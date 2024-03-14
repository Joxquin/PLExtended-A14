package com.google.android.apps.nexuslauncher.allapps;

import android.text.Editable;
import com.android.launcher3.allapps.search.AllAppsSearchBarController;
/* loaded from: classes.dex */
public final class X0 extends AllAppsSearchBarController {

    /* renamed from: d  reason: collision with root package name */
    public final C0696s1 f6971d;

    public X0(C0696s1 c0696s1) {
        this.f6971d = c0696s1;
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchBarController, android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        if (this.f6971d.f7190m) {
            this.mQuery = editable.toString();
        } else {
            super.afterTextChanged(editable);
        }
    }
}
