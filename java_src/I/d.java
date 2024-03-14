package I;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public boolean f551a;

    /* renamed from: b  reason: collision with root package name */
    public c f552b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f553c;

    public final void a() {
        synchronized (this) {
            if (this.f551a) {
                return;
            }
            this.f551a = true;
            this.f553c = true;
            c cVar = this.f552b;
            if (cVar != null) {
                try {
                    cVar.onCancel();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f553c = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            synchronized (this) {
                this.f553c = false;
                notifyAll();
            }
        }
    }

    public final void b(c cVar) {
        synchronized (this) {
            while (this.f553c) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                }
            }
            if (this.f552b == cVar) {
                return;
            }
            this.f552b = cVar;
            if (this.f551a) {
                cVar.onCancel();
            }
        }
    }
}
