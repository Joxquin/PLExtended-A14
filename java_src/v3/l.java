package v3;

import kotlinx.coroutines.D;
/* loaded from: classes.dex */
public final class l extends i {

    /* renamed from: f  reason: collision with root package name */
    public final Runnable f12672f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Runnable block, long j4, j taskContext) {
        super(j4, taskContext);
        kotlin.jvm.internal.h.e(block, "block");
        kotlin.jvm.internal.h.e(taskContext, "taskContext");
        this.f12672f = block;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f12672f.run();
        } finally {
            this.f12670e.a();
        }
    }

    public final String toString() {
        String a4 = D.a(this.f12672f);
        String b4 = D.b(this.f12672f);
        long j4 = this.f12669d;
        j jVar = this.f12670e;
        return "Task[" + a4 + "@" + b4 + ", " + j4 + ", " + jVar + "]";
    }
}
