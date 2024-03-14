package x1;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.h;
import t1.InterfaceC1405d;
import t1.InterfaceC1406e;
/* renamed from: x1.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1462f implements InterfaceC1406e, InterfaceC1405d {
    private boolean isReadyToHandleTransition;
    private boolean isTransitionRunning;
    private InterfaceC1406e source;
    private final List listeners = new ArrayList();
    private float lastTransitionProgress = -1.0f;

    public C1462f(InterfaceC1406e interfaceC1406e) {
        setSourceProvider(interfaceC1406e);
    }

    @Override // t1.InterfaceC1406e
    public void destroy() {
        InterfaceC1406e interfaceC1406e = this.source;
        if (interfaceC1406e != null) {
            interfaceC1406e.removeCallback(this);
        }
        InterfaceC1406e interfaceC1406e2 = this.source;
        if (interfaceC1406e2 != null) {
            interfaceC1406e2.destroy();
        }
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionFinished() {
        if (this.isReadyToHandleTransition) {
            for (InterfaceC1405d interfaceC1405d : this.listeners) {
                interfaceC1405d.onTransitionFinished();
            }
        }
        this.isTransitionRunning = false;
        this.lastTransitionProgress = -1.0f;
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionFinishing() {
        if (this.isReadyToHandleTransition) {
            for (InterfaceC1405d interfaceC1405d : this.listeners) {
                interfaceC1405d.onTransitionFinishing();
            }
        }
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionProgress(float f4) {
        if (this.isReadyToHandleTransition) {
            Iterator it = ((ArrayList) this.listeners).iterator();
            while (it.hasNext()) {
                ((InterfaceC1405d) it.next()).onTransitionProgress(f4);
            }
        }
        this.lastTransitionProgress = f4;
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionStarted() {
        this.isTransitionRunning = true;
        if (this.isReadyToHandleTransition) {
            for (InterfaceC1405d interfaceC1405d : this.listeners) {
                interfaceC1405d.onTransitionStarted();
            }
        }
    }

    public final void setReadyToHandleTransition(boolean z4) {
        if (this.isTransitionRunning) {
            List<InterfaceC1405d> list = this.listeners;
            if (z4) {
                for (InterfaceC1405d interfaceC1405d : list) {
                    interfaceC1405d.onTransitionStarted();
                }
                if (!(this.lastTransitionProgress == -1.0f)) {
                    for (InterfaceC1405d interfaceC1405d2 : list) {
                        interfaceC1405d2.onTransitionProgress(this.lastTransitionProgress);
                    }
                }
            } else {
                this.isTransitionRunning = false;
                for (InterfaceC1405d interfaceC1405d3 : list) {
                    interfaceC1405d3.onTransitionFinished();
                }
            }
        }
        this.isReadyToHandleTransition = z4;
    }

    public final void setSourceProvider(InterfaceC1406e interfaceC1406e) {
        InterfaceC1406e interfaceC1406e2 = this.source;
        if (interfaceC1406e2 != null) {
            interfaceC1406e2.removeCallback(this);
        }
        if (interfaceC1406e == null) {
            this.source = null;
            return;
        }
        this.source = interfaceC1406e;
        interfaceC1406e.addCallback(this);
    }

    @Override // x1.InterfaceC1459c
    public final void addCallback(InterfaceC1405d listener) {
        h.e(listener, "listener");
        this.listeners.add(listener);
    }

    @Override // x1.InterfaceC1459c
    public final void removeCallback(InterfaceC1405d listener) {
        h.e(listener, "listener");
        this.listeners.remove(listener);
    }
}
