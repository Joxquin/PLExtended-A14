package com.android.systemui.unfold.progress;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.h;
import t1.InterfaceC1405d;
import t1.InterfaceC1406e;
import v1.C1432b;
import v1.C1437g;
import v1.RunnableC1433c;
import v1.RunnableC1434d;
/* loaded from: classes.dex */
public final class RemoteUnfoldTransitionReceiver extends Binder implements InterfaceC1406e, IUnfoldTransitionListener {
    private final Executor executor;
    private final C1437g filter;
    private final Set listeners;
    private final C1432b outputProgressListener;

    public RemoteUnfoldTransitionReceiver(boolean z4, Executor executor) {
        h.e(executor, "executor");
        attachInterface(this, "com.android.systemui.unfold.progress.IUnfoldTransitionListener");
        this.executor = executor;
        this.listeners = new LinkedHashSet();
        C1432b c1432b = new C1432b(this);
        this.outputProgressListener = c1432b;
        this.filter = z4 ? new C1437g(c1432b) : null;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // t1.InterfaceC1406e
    public final void destroy() {
        this.listeners.clear();
    }

    @Override // android.os.Binder
    /* renamed from: onTransact$com$android$systemui$unfold$progress$IUnfoldTransitionListener$Stub */
    public final boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
        if (i4 >= 1 && i4 <= 16777215) {
            parcel.enforceInterface("com.android.systemui.unfold.progress.IUnfoldTransitionListener");
        }
        if (i4 == 1598968902) {
            parcel2.writeString("com.android.systemui.unfold.progress.IUnfoldTransitionListener");
            return true;
        }
        if (i4 == 2) {
            this.executor.execute(new RunnableC1433c(this, 1));
        } else if (i4 == 3) {
            float readFloat = parcel.readFloat();
            parcel.enforceNoDataAvail();
            this.executor.execute(new RunnableC1434d(this, readFloat));
        } else if (i4 != 4) {
            return super.onTransact(i4, parcel, parcel2, i5);
        } else {
            this.executor.execute(new RunnableC1433c(this, 0));
        }
        return true;
    }

    @Override // x1.InterfaceC1459c
    public final void removeCallback(Object obj) {
        InterfaceC1405d listener = (InterfaceC1405d) obj;
        h.e(listener, "listener");
        this.listeners.remove(listener);
    }

    @Override // x1.InterfaceC1459c
    public final void addCallback(InterfaceC1405d listener) {
        h.e(listener, "listener");
        this.listeners.add(listener);
    }
}
