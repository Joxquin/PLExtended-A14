package com.android.launcher3.touch;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.android.launcher3.Launcher;
import com.android.launcher3.Workspace;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.C0481n;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class h implements DialogInterface.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5207d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5208e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5209f;

    public /* synthetic */ h(int i4, Object obj, Object obj2) {
        this.f5207d = i4;
        this.f5208e = obj;
        this.f5209f = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        switch (this.f5207d) {
            case 0:
                ((CompletableFuture) this.f5208e).thenAcceptAsync((Consumer) this.f5209f, (Executor) Executors.MAIN_EXECUTOR);
                return;
            case 1:
                ((Context) this.f5208e).startActivity((Intent) this.f5209f);
                return;
            default:
                Workspace workspace = ((Launcher) this.f5208e).getWorkspace();
                Set singleton = Collections.singleton(ShortcutKey.fromItemInfo((WorkspaceItemInfo) this.f5209f));
                int i5 = ItemInfoMatcher.f5271a;
                workspace.persistRemoveItemsByMatcher(new C0481n(1, singleton), "user explicitly removes disabled shortcut");
                return;
        }
    }
}
