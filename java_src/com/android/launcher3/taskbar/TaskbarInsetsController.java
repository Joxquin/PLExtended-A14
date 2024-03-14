package com.android.launcher3.taskbar;

import android.content.res.Resources;
import android.graphics.Insets;
import android.graphics.Region;
import android.os.Binder;
import android.os.IBinder;
import android.view.InsetsFrameProvider;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.android.internal.policy.GestureNavigationSettingsObserver;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class TaskbarInsetsController implements TaskbarControllers.LoggableTaskbarController {
    private final TaskbarActivityContext context;
    private TaskbarControllers controllers;
    private final m3.l deviceProfileChangeListener;
    private final GestureNavigationSettingsObserver gestureNavSettingsObserver;
    private final IBinder insetsOwner;
    private final int taskbarHeightForIme;
    private final Region touchableRegion;
    private WindowManager.LayoutParams windowLayoutParams;

    public TaskbarInsetsController(TaskbarActivityContext context) {
        kotlin.jvm.internal.h.e(context, "context");
        this.context = context;
        this.taskbarHeightForIme = context.getResources().getDimensionPixelSize(R.dimen.taskbar_ime_size);
        this.touchableRegion = new Region();
        this.insetsOwner = new Binder();
        this.deviceProfileChangeListener = new m3.l() { // from class: com.android.launcher3.taskbar.TaskbarInsetsController$deviceProfileChangeListener$1
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj) {
                kotlin.jvm.internal.h.e((DeviceProfile) obj, "<anonymous parameter 0>");
                TaskbarInsetsController.this.onTaskbarOrBubblebarWindowHeightOrInsetsChanged();
                return e3.f.f9037a;
            }
        };
        this.gestureNavSettingsObserver = new GestureNavigationSettingsObserver(context.getMainThreadHandler(), context, new Runnable() { // from class: com.android.launcher3.taskbar.TaskbarInsetsController$gestureNavSettingsObserver$1
            @Override // java.lang.Runnable
            public final void run() {
                TaskbarInsetsController.this.onTaskbarOrBubblebarWindowHeightOrInsetsChanged();
            }
        });
    }

    private static Insets getInsetsForGravity(int i4, int i5) {
        if ((i5 & 80) == 80) {
            Insets of = Insets.of(0, 0, 0, i4);
            kotlin.jvm.internal.h.d(of, "of(0, 0, 0, inset)");
            return of;
        }
        boolean z4 = (i5 & 8388611) == 8388611;
        int i6 = z4 ? i4 : 0;
        if (z4) {
            i4 = 0;
        }
        Insets of2 = Insets.of(i6, 0, i4, 0);
        kotlin.jvm.internal.h.d(of2, "of(leftInset , 0, rightInset, 0)");
        return of2;
    }

    private final InsetsFrameProvider[] getProvidedInsets(int i4) {
        int isGestureNav = i4 | this.context.isGestureNav();
        IBinder iBinder = this.insetsOwner;
        InsetsFrameProvider flags = new InsetsFrameProvider(iBinder, 0, WindowInsets.Type.navigationBars()).setFlags(isGestureNav, 3);
        kotlin.jvm.internal.h.d(flags, "InsetsFrameProvider(inse…                        )");
        InsetsFrameProvider insetsFrameProvider = new InsetsFrameProvider(iBinder, 0, WindowInsets.Type.tappableElement());
        InsetsFrameProvider insetsFrameProvider2 = new InsetsFrameProvider(iBinder, 0, WindowInsets.Type.mandatorySystemGestures());
        InsetsFrameProvider source = new InsetsFrameProvider(iBinder, 0, WindowInsets.Type.systemGestures()).setSource(0);
        kotlin.jvm.internal.h.d(source, "InsetsFrameProvider(inse…setSource(SOURCE_DISPLAY)");
        InsetsFrameProvider source2 = new InsetsFrameProvider(iBinder, 1, WindowInsets.Type.systemGestures()).setSource(0);
        kotlin.jvm.internal.h.d(source2, "InsetsFrameProvider(inse…setSource(SOURCE_DISPLAY)");
        return new InsetsFrameProvider[]{flags, insetsFrameProvider, insetsFrameProvider2, source, source2};
    }

    private final void setProviderInsets(InsetsFrameProvider insetsFrameProvider, int i4) {
        Insets insetsForGravity;
        TaskbarControllers taskbarControllers = this.controllers;
        if (taskbarControllers == null) {
            kotlin.jvm.internal.h.g("controllers");
            throw null;
        }
        int contentHeightToReportToApps = taskbarControllers.taskbarStashController.getContentHeightToReportToApps();
        TaskbarControllers taskbarControllers2 = this.controllers;
        if (taskbarControllers2 == null) {
            kotlin.jvm.internal.h.g("controllers");
            throw null;
        }
        int tappableHeightToReportToApps = taskbarControllers2.taskbarStashController.getTappableHeightToReportToApps();
        TaskbarActivityContext taskbarActivityContext = this.context;
        Resources resources = taskbarActivityContext.getResources();
        if (insetsFrameProvider.getType() == WindowInsets.Type.navigationBars() || insetsFrameProvider.getType() == WindowInsets.Type.mandatorySystemGestures()) {
            insetsFrameProvider.setInsetsSize(getInsetsForGravity(contentHeightToReportToApps, i4));
        } else if (insetsFrameProvider.getType() == WindowInsets.Type.tappableElement()) {
            insetsFrameProvider.setInsetsSize(getInsetsForGravity(tappableHeightToReportToApps, i4));
        } else {
            int type = insetsFrameProvider.getType();
            int systemGestures = WindowInsets.Type.systemGestures();
            GestureNavigationSettingsObserver gestureNavigationSettingsObserver = this.gestureNavSettingsObserver;
            if (type == systemGestures && insetsFrameProvider.getIndex() == 0) {
                insetsFrameProvider.setInsetsSize(Insets.of(taskbarActivityContext.isThreeButtonNav() ? 0 : gestureNavigationSettingsObserver.getLeftSensitivityForCallingUser(resources), 0, 0, 0));
            } else if (insetsFrameProvider.getType() == WindowInsets.Type.systemGestures() && insetsFrameProvider.getIndex() == 1) {
                insetsFrameProvider.setInsetsSize(Insets.of(0, 0, taskbarActivityContext.isThreeButtonNav() ? 0 : gestureNavigationSettingsObserver.getRightSensitivityForCallingUser(resources), 0));
            }
        }
        if (taskbarActivityContext.isGestureNav()) {
            TaskbarControllers taskbarControllers3 = this.controllers;
            if (taskbarControllers3 == null) {
                kotlin.jvm.internal.h.g("controllers");
                throw null;
            }
            insetsForGravity = getInsetsForGravity(taskbarControllers3.taskbarStashController.getStashedHeight(), i4);
        } else {
            insetsForGravity = getInsetsForGravity(this.taskbarHeightForIme, i4);
        }
        InsetsFrameProvider.InsetsSizeOverride[] insetsSizeOverrideArr = {new InsetsFrameProvider.InsetsSizeOverride(2011, insetsForGravity)};
        InsetsFrameProvider.InsetsSizeOverride[] insetsSizeOverrideArr2 = {new InsetsFrameProvider.InsetsSizeOverride(2011, insetsForGravity), new InsetsFrameProvider.InsetsSizeOverride(2031, taskbarActivityContext.isGestureNav() ? getInsetsForGravity(0, i4) : getInsetsForGravity(tappableHeightToReportToApps, i4))};
        if ((taskbarActivityContext.isGestureNav() || TaskbarManager.FLAG_HIDE_NAVBAR_WINDOW) && insetsFrameProvider.getType() == WindowInsets.Type.tappableElement()) {
            insetsFrameProvider.setInsetsSizeOverrides(insetsSizeOverrideArr2);
        } else if (insetsFrameProvider.getType() != WindowInsets.Type.systemGestures()) {
            insetsFrameProvider.setInsetsSizeOverrides(insetsSizeOverrideArr);
        }
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String prefix, PrintWriter pw) {
        kotlin.jvm.internal.h.e(prefix, "prefix");
        kotlin.jvm.internal.h.e(pw, "pw");
        pw.println(prefix.concat("TaskbarInsetsController:"));
        WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
        if (layoutParams == null) {
            kotlin.jvm.internal.h.g("windowLayoutParams");
            throw null;
        }
        pw.println(prefix + "\twindowHeight=" + layoutParams.height);
        WindowManager.LayoutParams layoutParams2 = this.windowLayoutParams;
        if (layoutParams2 == null) {
            kotlin.jvm.internal.h.g("windowLayoutParams");
            throw null;
        }
        InsetsFrameProvider[] insetsFrameProviderArr = layoutParams2.providedInsets;
        kotlin.jvm.internal.h.d(insetsFrameProviderArr, "windowLayoutParams.providedInsets");
        for (InsetsFrameProvider insetsFrameProvider : insetsFrameProviderArr) {
            pw.print(prefix + "\tprovidedInsets: (type=" + WindowInsets.Type.toString(insetsFrameProvider.getType()) + " insetsSize=" + insetsFrameProvider.getInsetsSize());
            if (insetsFrameProvider.getInsetsSizeOverrides() != null) {
                pw.print(" insetsSizeOverrides={");
                InsetsFrameProvider.InsetsSizeOverride[] insetsSizeOverrides = insetsFrameProvider.getInsetsSizeOverrides();
                kotlin.jvm.internal.h.d(insetsSizeOverrides, "provider.insetsSizeOverrides");
                int length = insetsSizeOverrides.length;
                for (int i4 = 0; i4 < length; i4++) {
                    InsetsFrameProvider.InsetsSizeOverride insetsSizeOverride = insetsSizeOverrides[i4];
                    if (i4 > 0) {
                        pw.print(", ");
                    }
                    pw.print(insetsSizeOverride);
                }
                pw.print("})");
            }
            pw.println();
        }
    }

    public final int getTaskbarHeightForIme() {
        return this.taskbarHeightForIme;
    }

    public final void init(TaskbarControllers controllers) {
        kotlin.jvm.internal.h.e(controllers, "controllers");
        this.controllers = controllers;
        TaskbarActivityContext taskbarActivityContext = this.context;
        WindowManager.LayoutParams windowLayoutParams = taskbarActivityContext.getWindowLayoutParams();
        kotlin.jvm.internal.h.d(windowLayoutParams, "context.windowLayoutParams");
        this.windowLayoutParams = windowLayoutParams;
        onTaskbarOrBubblebarWindowHeightOrInsetsChanged();
        taskbarActivityContext.addOnDeviceProfileChangeListener(new TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0(this.deviceProfileChangeListener));
        this.gestureNavSettingsObserver.registerForCallingUser();
    }

    public final void onDestroy() {
        this.context.removeOnDeviceProfileChangeListener(new TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0(this.deviceProfileChangeListener));
        this.gestureNavSettingsObserver.unregister();
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onTaskbarOrBubblebarWindowHeightOrInsetsChanged() {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.taskbar.TaskbarInsetsController.onTaskbarOrBubblebarWindowHeightOrInsetsChanged():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateInsetsTouchability(android.view.ViewTreeObserver.InternalInsetsInfo r9) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.taskbar.TaskbarInsetsController.updateInsetsTouchability(android.view.ViewTreeObserver$InternalInsetsInfo):void");
    }
}
