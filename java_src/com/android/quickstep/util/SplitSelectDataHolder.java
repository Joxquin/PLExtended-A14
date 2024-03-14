package com.android.quickstep.util;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.util.Log;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.systemui.shared.system.PeopleProviderUtils;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public final class SplitSelectDataHolder {
    public static final Companion Companion = new Companion(null);
    public static final int SPLIT_PENDINGINTENT_PENDINGINTENT = 5;
    public static final int SPLIT_PENDINGINTENT_TASK = 3;
    public static final int SPLIT_SHORTCUT_TASK = 4;
    public static final int SPLIT_SINGLE_INTENT_FULLSCREEN = 7;
    public static final int SPLIT_SINGLE_SHORTCUT_FULLSCREEN = 8;
    public static final int SPLIT_SINGLE_TASK_FULLSCREEN = 6;
    public static final int SPLIT_TASK_PENDINGINTENT = 1;
    public static final int SPLIT_TASK_SHORTCUT = 2;
    public static final int SPLIT_TASK_TASK = 0;
    private final String TAG;
    private final Context context;
    private Intent initialIntent;
    private PendingIntent initialPendingIntent;
    private ShortcutInfo initialShortcut;
    private int initialStagePosition;
    private int initialTaskId;
    private UserHandle initialUser;
    private ItemInfo itemInfo;
    private Intent secondIntent;
    private PendingIntent secondPendingIntent;
    private ShortcutInfo secondShortcut;
    private int secondTaskId;
    private UserHandle secondUser;
    private StatsLogManager.EventEnum splitEvent;

    /* loaded from: classes.dex */
    public final class Companion {

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface SplitLaunchType {
        }

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }
    }

    public SplitSelectDataHolder(Context context) {
        kotlin.jvm.internal.h.e(context, "context");
        this.context = context;
        this.TAG = kotlin.jvm.internal.j.a(SplitSelectDataHolder.class).b();
        this.initialStagePosition = -1;
        this.initialTaskId = -1;
        this.secondTaskId = -1;
    }

    private final void convertIntentsToFinalTypes() {
        this.initialShortcut = getShortcutInfo(this.initialIntent, this.initialUser);
        this.initialPendingIntent = getPendingIntent(this.initialIntent, this.initialUser);
        this.initialIntent = null;
        Intent intent = this.secondIntent;
        if (intent != null && this.secondPendingIntent != null) {
            throw new IllegalStateException("Both secondIntent and secondPendingIntent non-null");
        }
        if (this.secondPendingIntent != null) {
            this.secondIntent = null;
            return;
        }
        this.secondShortcut = getShortcutInfo(intent, this.secondUser);
        this.secondPendingIntent = getPendingIntent(this.secondIntent, this.secondUser);
        this.secondIntent = null;
    }

    private final SplitLaunchData generateSplitLaunchData(int i4) {
        int i5 = this.initialTaskId;
        int i6 = this.secondTaskId;
        PendingIntent pendingIntent = this.initialPendingIntent;
        PendingIntent pendingIntent2 = this.secondPendingIntent;
        UserHandle userHandle = this.initialUser;
        int identifier = userHandle != null ? userHandle.getIdentifier() : -1;
        UserHandle userHandle2 = this.secondUser;
        return new SplitLaunchData(i4, i5, i6, pendingIntent, pendingIntent2, identifier, userHandle2 != null ? userHandle2.getIdentifier() : -1, this.initialShortcut, this.secondShortcut, this.itemInfo, this.splitEvent, this.initialStagePosition);
    }

    private final int getFullscreenLaunchType() {
        if (this.initialTaskId != -1) {
            return 6;
        }
        if (this.initialShortcut != null) {
            return 8;
        }
        if (this.initialPendingIntent != null) {
            return 7;
        }
        throw new IllegalStateException("Unidentified fullscreen launch type");
    }

    private static /* synthetic */ void getInitialStagePosition$annotations() {
    }

    private final PendingIntent getPendingIntent(Intent intent, UserHandle userHandle) {
        if (kotlin.jvm.internal.h.a(intent, this.initialIntent) || kotlin.jvm.internal.h.a(intent, this.secondIntent)) {
            if (intent == null) {
                return null;
            }
            return userHandle != null ? PendingIntent.getActivityAsUser(this.context, 0, intent, 50331648, null, userHandle) : PendingIntent.getActivity(this.context, 0, intent, 50331648);
        }
        throw new IllegalStateException("Invalid intent to convert to PendingIntent");
    }

    private final ShortcutInfo getShortcutInfo(Intent intent, UserHandle userHandle) {
        String stringExtra;
        if ((intent != null ? intent.getPackage() : null) == null || (stringExtra = intent.getStringExtra(PeopleProviderUtils.EXTRAS_KEY_SHORTCUT_ID)) == null) {
            return null;
        }
        try {
            Context createPackageContextAsUser = this.context.createPackageContextAsUser(intent.getPackage(), 0, userHandle);
            kotlin.jvm.internal.h.d(createPackageContextAsUser, "context.createPackageCon…e(), 0 /* flags */, user)");
            return new ShortcutInfo.Builder(createPackageContextAsUser, stringExtra).build();
        } catch (PackageManager.NameNotFoundException unused) {
            String str = this.TAG;
            String str2 = intent.getPackage();
            Log.w(str, "Failed to create a ShortcutInfo for " + str2);
            return null;
        }
    }

    private final boolean isInitialTaskIntentSet() {
        return (this.initialTaskId == -1 && this.initialIntent == null) ? false : true;
    }

    private final boolean isSecondTaskIntentSet() {
        return (this.secondTaskId == -1 && this.secondIntent == null && this.secondPendingIntent == null) ? false : true;
    }

    private final void setInitialData(int i4, StatsLogManager.EventEnum eventEnum, ItemInfo itemInfo) {
        this.itemInfo = itemInfo;
        this.initialStagePosition = i4;
        this.splitEvent = eventEnum;
    }

    public final void dump(String prefix, PrintWriter writer) {
        kotlin.jvm.internal.h.e(prefix, "prefix");
        kotlin.jvm.internal.h.e(writer, "writer");
        writer.println(prefix.concat(" SplitSelectDataHolder"));
        int i4 = this.initialStagePosition;
        writer.println(prefix + "\tinitialStagePosition= " + i4);
        int i5 = this.initialTaskId;
        writer.println(prefix + "\tinitialTaskId= " + i5);
        int i6 = this.secondTaskId;
        writer.println(prefix + "\tsecondTaskId= " + i6);
        UserHandle userHandle = this.initialUser;
        writer.println(prefix + "\tinitialUser= " + userHandle);
        UserHandle userHandle2 = this.secondUser;
        writer.println(prefix + "\tsecondUser= " + userHandle2);
        Intent intent = this.initialIntent;
        writer.println(prefix + "\tinitialIntent= " + intent);
        Intent intent2 = this.secondIntent;
        writer.println(prefix + "\tsecondIntent= " + intent2);
        PendingIntent pendingIntent = this.secondPendingIntent;
        writer.println(prefix + "\tsecondPendingIntent= " + pendingIntent);
        ItemInfo itemInfo = this.itemInfo;
        writer.println(prefix + "\titemInfo= " + itemInfo);
        StatsLogManager.EventEnum eventEnum = this.splitEvent;
        writer.println(prefix + "\tsplitEvent= " + eventEnum);
        ShortcutInfo shortcutInfo = this.initialShortcut;
        writer.println(prefix + "\tinitialShortcut= " + shortcutInfo);
        ShortcutInfo shortcutInfo2 = this.secondShortcut;
        writer.println(prefix + "\tsecondShortcut= " + shortcutInfo2);
    }

    public final Context getContext() {
        return this.context;
    }

    public final SplitLaunchData getFullscreenLaunchData() {
        convertIntentsToFinalTypes();
        return generateSplitLaunchData(getFullscreenLaunchType());
    }

    public final int getInitialStagePosition() {
        return this.initialStagePosition;
    }

    public final int getInitialTaskId() {
        return this.initialTaskId;
    }

    public final ItemInfo getItemInfo() {
        return this.itemInfo;
    }

    public final int getSecondTaskId() {
        return this.secondTaskId;
    }

    public final StatsLogManager.EventEnum getSplitEvent() {
        return this.splitEvent;
    }

    public final SplitLaunchData getSplitLaunchData() {
        convertIntentsToFinalTypes();
        int splitLaunchType = getSplitLaunchType();
        if (splitLaunchType == 1 || splitLaunchType == 2) {
            int i4 = this.initialStagePosition;
            if (i4 != -1) {
                i4 = i4 != 0 ? 0 : 1;
            }
            this.initialStagePosition = i4;
        }
        return generateSplitLaunchData(splitLaunchType);
    }

    public final int getSplitLaunchType() {
        if (this.initialIntent == null && this.secondIntent == null) {
            if (this.initialTaskId != -1) {
                if (this.secondTaskId != -1) {
                    return 0;
                }
                if (this.secondShortcut != null) {
                    return 2;
                }
                if (this.secondPendingIntent != null) {
                    return 1;
                }
            }
            if (this.secondTaskId != -1) {
                if (this.initialShortcut != null) {
                    return 4;
                }
                if (this.initialPendingIntent != null) {
                    return 3;
                }
            }
            if (this.initialPendingIntent == null || this.secondPendingIntent == null) {
                throw new IllegalStateException("Unidentified split launch type");
            }
            return 5;
        }
        throw new IllegalStateException("Intents need to be converted");
    }

    public final String getTAG() {
        return this.TAG;
    }

    public final boolean isBothSplitAppsConfirmed() {
        return isInitialTaskIntentSet() && isSecondTaskIntentSet();
    }

    public final boolean isSplitSelectActive() {
        return isInitialTaskIntentSet() && !isSecondTaskIntentSet();
    }

    public final void resetState() {
        this.initialStagePosition = -1;
        this.initialTaskId = -1;
        this.secondTaskId = -1;
        this.initialUser = null;
        this.secondUser = null;
        this.initialIntent = null;
        this.secondIntent = null;
        this.secondPendingIntent = null;
        this.itemInfo = null;
        this.splitEvent = null;
        this.initialShortcut = null;
        this.secondShortcut = null;
    }

    public final void setInitialTaskSelect(Intent intent, int i4, ItemInfo itemInfo, StatsLogManager.EventEnum eventEnum, int i5) {
        if (i5 != -1) {
            this.initialTaskId = i5;
        } else {
            kotlin.jvm.internal.h.b(intent);
            this.initialIntent = intent;
            kotlin.jvm.internal.h.b(itemInfo);
            this.initialUser = itemInfo.user;
        }
        setInitialData(i4, eventEnum, itemInfo);
    }

    public final void setSecondTask(int i4) {
        this.secondTaskId = i4;
    }

    public final void setSecondTask(Intent intent, UserHandle user) {
        kotlin.jvm.internal.h.e(intent, "intent");
        kotlin.jvm.internal.h.e(user, "user");
        this.secondIntent = intent;
        this.secondUser = user;
    }

    public final void setSecondTask(PendingIntent pendingIntent) {
        kotlin.jvm.internal.h.e(pendingIntent, "pendingIntent");
        this.secondPendingIntent = pendingIntent;
        UserHandle creatorUserHandle = pendingIntent.getCreatorUserHandle();
        kotlin.jvm.internal.h.b(creatorUserHandle);
        this.secondUser = creatorUserHandle;
    }

    public final void setInitialTaskSelect(ActivityManager.RunningTaskInfo info, int i4, ItemInfo itemInfo, StatsLogManager.EventEnum eventEnum) {
        kotlin.jvm.internal.h.e(info, "info");
        this.initialTaskId = info.taskId;
        setInitialData(i4, eventEnum, itemInfo);
    }

    /* loaded from: classes.dex */
    public final class SplitLaunchData {
        private PendingIntent initialPendingIntent;
        private ShortcutInfo initialShortcut;
        private final int initialStagePosition;
        private int initialTaskId;
        private int initialUserId;
        private ItemInfo itemInfo;
        private PendingIntent secondPendingIntent;
        private ShortcutInfo secondShortcut;
        private int secondTaskId;
        private int secondUserId;
        private StatsLogManager.EventEnum splitEvent;
        private final int splitLaunchType;

        public SplitLaunchData(int i4, int i5, int i6, PendingIntent pendingIntent, PendingIntent pendingIntent2, int i7, int i8, ShortcutInfo shortcutInfo, ShortcutInfo shortcutInfo2, ItemInfo itemInfo, StatsLogManager.EventEnum eventEnum, int i9) {
            this.splitLaunchType = i4;
            this.initialTaskId = i5;
            this.secondTaskId = i6;
            this.initialPendingIntent = pendingIntent;
            this.secondPendingIntent = pendingIntent2;
            this.initialUserId = i7;
            this.secondUserId = i8;
            this.initialShortcut = shortcutInfo;
            this.secondShortcut = shortcutInfo2;
            this.itemInfo = itemInfo;
            this.splitEvent = eventEnum;
            this.initialStagePosition = i9;
        }

        public final int component1() {
            return this.splitLaunchType;
        }

        public final ItemInfo component10() {
            return this.itemInfo;
        }

        public final StatsLogManager.EventEnum component11() {
            return this.splitEvent;
        }

        public final int component12() {
            return this.initialStagePosition;
        }

        public final int component2() {
            return this.initialTaskId;
        }

        public final int component3() {
            return this.secondTaskId;
        }

        public final PendingIntent component4() {
            return this.initialPendingIntent;
        }

        public final PendingIntent component5() {
            return this.secondPendingIntent;
        }

        public final int component6() {
            return this.initialUserId;
        }

        public final int component7() {
            return this.secondUserId;
        }

        public final ShortcutInfo component8() {
            return this.initialShortcut;
        }

        public final ShortcutInfo component9() {
            return this.secondShortcut;
        }

        public final SplitLaunchData copy(int i4, int i5, int i6, PendingIntent pendingIntent, PendingIntent pendingIntent2, int i7, int i8, ShortcutInfo shortcutInfo, ShortcutInfo shortcutInfo2, ItemInfo itemInfo, StatsLogManager.EventEnum eventEnum, int i9) {
            return new SplitLaunchData(i4, i5, i6, pendingIntent, pendingIntent2, i7, i8, shortcutInfo, shortcutInfo2, itemInfo, eventEnum, i9);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SplitLaunchData) {
                SplitLaunchData splitLaunchData = (SplitLaunchData) obj;
                return this.splitLaunchType == splitLaunchData.splitLaunchType && this.initialTaskId == splitLaunchData.initialTaskId && this.secondTaskId == splitLaunchData.secondTaskId && kotlin.jvm.internal.h.a(this.initialPendingIntent, splitLaunchData.initialPendingIntent) && kotlin.jvm.internal.h.a(this.secondPendingIntent, splitLaunchData.secondPendingIntent) && this.initialUserId == splitLaunchData.initialUserId && this.secondUserId == splitLaunchData.secondUserId && kotlin.jvm.internal.h.a(this.initialShortcut, splitLaunchData.initialShortcut) && kotlin.jvm.internal.h.a(this.secondShortcut, splitLaunchData.secondShortcut) && kotlin.jvm.internal.h.a(this.itemInfo, splitLaunchData.itemInfo) && kotlin.jvm.internal.h.a(this.splitEvent, splitLaunchData.splitEvent) && this.initialStagePosition == splitLaunchData.initialStagePosition;
            }
            return false;
        }

        public final PendingIntent getInitialPendingIntent() {
            return this.initialPendingIntent;
        }

        public final ShortcutInfo getInitialShortcut() {
            return this.initialShortcut;
        }

        public final int getInitialStagePosition() {
            return this.initialStagePosition;
        }

        public final int getInitialTaskId() {
            return this.initialTaskId;
        }

        public final int getInitialUserId() {
            return this.initialUserId;
        }

        public final ItemInfo getItemInfo() {
            return this.itemInfo;
        }

        public final PendingIntent getSecondPendingIntent() {
            return this.secondPendingIntent;
        }

        public final ShortcutInfo getSecondShortcut() {
            return this.secondShortcut;
        }

        public final int getSecondTaskId() {
            return this.secondTaskId;
        }

        public final int getSecondUserId() {
            return this.secondUserId;
        }

        public final StatsLogManager.EventEnum getSplitEvent() {
            return this.splitEvent;
        }

        public final int getSplitLaunchType() {
            return this.splitLaunchType;
        }

        public int hashCode() {
            int hashCode = (Integer.hashCode(this.secondTaskId) + ((Integer.hashCode(this.initialTaskId) + (Integer.hashCode(this.splitLaunchType) * 31)) * 31)) * 31;
            PendingIntent pendingIntent = this.initialPendingIntent;
            int hashCode2 = (hashCode + (pendingIntent == null ? 0 : pendingIntent.hashCode())) * 31;
            PendingIntent pendingIntent2 = this.secondPendingIntent;
            int hashCode3 = pendingIntent2 == null ? 0 : pendingIntent2.hashCode();
            int hashCode4 = (Integer.hashCode(this.secondUserId) + ((Integer.hashCode(this.initialUserId) + ((hashCode2 + hashCode3) * 31)) * 31)) * 31;
            ShortcutInfo shortcutInfo = this.initialShortcut;
            int hashCode5 = (hashCode4 + (shortcutInfo == null ? 0 : shortcutInfo.hashCode())) * 31;
            ShortcutInfo shortcutInfo2 = this.secondShortcut;
            int hashCode6 = (hashCode5 + (shortcutInfo2 == null ? 0 : shortcutInfo2.hashCode())) * 31;
            ItemInfo itemInfo = this.itemInfo;
            int hashCode7 = (hashCode6 + (itemInfo == null ? 0 : itemInfo.hashCode())) * 31;
            StatsLogManager.EventEnum eventEnum = this.splitEvent;
            return Integer.hashCode(this.initialStagePosition) + ((hashCode7 + (eventEnum != null ? eventEnum.hashCode() : 0)) * 31);
        }

        public final void setInitialPendingIntent(PendingIntent pendingIntent) {
            this.initialPendingIntent = pendingIntent;
        }

        public final void setInitialShortcut(ShortcutInfo shortcutInfo) {
            this.initialShortcut = shortcutInfo;
        }

        public final void setInitialTaskId(int i4) {
            this.initialTaskId = i4;
        }

        public final void setInitialUserId(int i4) {
            this.initialUserId = i4;
        }

        public final void setItemInfo(ItemInfo itemInfo) {
            this.itemInfo = itemInfo;
        }

        public final void setSecondPendingIntent(PendingIntent pendingIntent) {
            this.secondPendingIntent = pendingIntent;
        }

        public final void setSecondShortcut(ShortcutInfo shortcutInfo) {
            this.secondShortcut = shortcutInfo;
        }

        public final void setSecondTaskId(int i4) {
            this.secondTaskId = i4;
        }

        public final void setSecondUserId(int i4) {
            this.secondUserId = i4;
        }

        public final void setSplitEvent(StatsLogManager.EventEnum eventEnum) {
            this.splitEvent = eventEnum;
        }

        public String toString() {
            int i4 = this.splitLaunchType;
            int i5 = this.initialTaskId;
            int i6 = this.secondTaskId;
            PendingIntent pendingIntent = this.initialPendingIntent;
            PendingIntent pendingIntent2 = this.secondPendingIntent;
            int i7 = this.initialUserId;
            int i8 = this.secondUserId;
            ShortcutInfo shortcutInfo = this.initialShortcut;
            ShortcutInfo shortcutInfo2 = this.secondShortcut;
            ItemInfo itemInfo = this.itemInfo;
            StatsLogManager.EventEnum eventEnum = this.splitEvent;
            int i9 = this.initialStagePosition;
            return "SplitLaunchData(splitLaunchType=" + i4 + ", initialTaskId=" + i5 + ", secondTaskId=" + i6 + ", initialPendingIntent=" + pendingIntent + ", secondPendingIntent=" + pendingIntent2 + ", initialUserId=" + i7 + ", secondUserId=" + i8 + ", initialShortcut=" + shortcutInfo + ", secondShortcut=" + shortcutInfo2 + ", itemInfo=" + itemInfo + ", splitEvent=" + eventEnum + ", initialStagePosition=" + i9 + ")";
        }

        public /* synthetic */ SplitLaunchData(int i4, int i5, int i6, PendingIntent pendingIntent, PendingIntent pendingIntent2, int i7, int i8, ShortcutInfo shortcutInfo, ShortcutInfo shortcutInfo2, ItemInfo itemInfo, StatsLogManager.EventEnum eventEnum, int i9, int i10, kotlin.jvm.internal.f fVar) {
            this(i4, (i10 & 2) != 0 ? -1 : i5, (i10 & 4) != 0 ? -1 : i6, (i10 & 8) != 0 ? null : pendingIntent, (i10 & 16) != 0 ? null : pendingIntent2, (i10 & 32) != 0 ? -1 : i7, (i10 & 64) != 0 ? -1 : i8, (i10 & 128) != 0 ? null : shortcutInfo, (i10 & 256) != 0 ? null : shortcutInfo2, (i10 & 512) != 0 ? null : itemInfo, (i10 & 1024) == 0 ? eventEnum : null, (i10 & 2048) == 0 ? i9 : -1);
        }
    }
}
