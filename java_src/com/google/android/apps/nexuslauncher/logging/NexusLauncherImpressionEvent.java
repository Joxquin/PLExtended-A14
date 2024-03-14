package com.google.android.apps.nexuslauncher.logging;

import com.android.launcher3.logging.StatsLogManager;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class NexusLauncherImpressionEvent implements StatsLogManager.EventEnum {

    /* renamed from: d  reason: collision with root package name */
    public static final NexusLauncherImpressionEvent f7435d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ NexusLauncherImpressionEvent[] f7436e;
    private final int mId = 1241;

    static {
        NexusLauncherImpressionEvent nexusLauncherImpressionEvent = new NexusLauncherImpressionEvent();
        f7435d = nexusLauncherImpressionEvent;
        f7436e = new NexusLauncherImpressionEvent[]{nexusLauncherImpressionEvent};
    }

    public static NexusLauncherImpressionEvent valueOf(String str) {
        return (NexusLauncherImpressionEvent) Enum.valueOf(NexusLauncherImpressionEvent.class, str);
    }

    public static NexusLauncherImpressionEvent[] values() {
        return (NexusLauncherImpressionEvent[]) f7436e.clone();
    }

    @Override // com.android.launcher3.logging.StatsLogManager.EventEnum
    public final int getId() {
        return this.mId;
    }
}
