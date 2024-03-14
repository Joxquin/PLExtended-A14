package V1;

import android.content.SharedPreferences;
import com.android.launcher3.logging.StatsLogManager;
import com.android.systemui.shared.recents.model.Task;
import com.google.android.apps.nexuslauncher.qsb.AssistUtilsGoogle;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final Task.TaskKey f1822a;

    /* renamed from: b  reason: collision with root package name */
    public final X1.u f1823b;

    /* renamed from: c  reason: collision with root package name */
    public final X1.f f1824c;

    /* renamed from: d  reason: collision with root package name */
    public final k f1825d;

    /* renamed from: e  reason: collision with root package name */
    public final l f1826e;

    /* renamed from: f  reason: collision with root package name */
    public final t f1827f;

    /* renamed from: g  reason: collision with root package name */
    public final Supplier f1828g;

    /* renamed from: h  reason: collision with root package name */
    public final X1.l f1829h;

    /* renamed from: i  reason: collision with root package name */
    public final X1.l f1830i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f1831j;

    /* renamed from: k  reason: collision with root package name */
    public final StatsLogManager f1832k;

    /* renamed from: l  reason: collision with root package name */
    public final AssistUtilsGoogle f1833l;

    /* renamed from: n  reason: collision with root package name */
    public X1.t f1835n;

    /* renamed from: m  reason: collision with root package name */
    public boolean f1834m = false;

    /* renamed from: o  reason: collision with root package name */
    public final h f1836o = new h(this);

    public j(Task.TaskKey taskKey, X1.u uVar, X1.f fVar, k kVar, l lVar, t tVar, X1.k kVar2, X1.l lVar2, X1.l lVar3, boolean z4, SharedPreferences sharedPreferences, boolean z5, StatsLogManager statsLogManager, AssistUtilsGoogle assistUtilsGoogle) {
        this.f1822a = taskKey;
        this.f1823b = uVar;
        this.f1824c = fVar;
        this.f1825d = kVar;
        this.f1826e = lVar;
        this.f1827f = tVar;
        this.f1828g = kVar2;
        this.f1829h = lVar2;
        this.f1830i = lVar3;
        this.f1831j = z4;
        this.f1832k = statsLogManager;
        this.f1833l = assistUtilsGoogle;
    }
}
