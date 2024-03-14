package Q1;

import com.android.launcher3.util.EventLogArray;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final NexusLauncherActivity f1612a;

    /* renamed from: b  reason: collision with root package name */
    public final EventLogArray f1613b;

    public d(NexusLauncherActivity launcher) {
        h.e(launcher, "launcher");
        this.f1612a = launcher;
        this.f1613b = new EventLogArray("DreamAnimationController");
    }
}
