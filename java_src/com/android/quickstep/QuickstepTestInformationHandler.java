package com.android.quickstep;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.testing.TestInformationHandler;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.quickstep.TouchInteractionService;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.util.TISBindHelper;
import com.android.systemui.shared.R;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.function.Consumer;
import java.util.function.Function;
/* loaded from: classes.dex */
public class QuickstepTestInformationHandler extends TestInformationHandler {
    protected final Context mContext;

    public QuickstepTestInformationHandler(Context context) {
        this.mContext = context;
    }

    private void enableBlockingTimeout(TouchInteractionService.TISBinder tISBinder, boolean z4) {
        TaskbarActivityContext currentActivityContext = tISBinder.getTaskbarManager().getCurrentActivityContext();
        if (currentActivityContext == null) {
            return;
        }
        currentActivityContext.enableBlockingTimeoutDuringTests(z4);
    }

    private void enableManualTaskbarStashing(TouchInteractionService.TISBinder tISBinder, boolean z4) {
        tISBinder.getTaskbarManager().getCurrentActivityContext().enableManualStashingDuringTests(z4);
    }

    private void enableTransientTaskbar(boolean z4) {
        DisplayController displayController = (DisplayController) DisplayController.INSTANCE.get(this.mContext);
        DisplayController.enableTransientTaskbarForTests(z4);
    }

    private Bundle getTISBinderUIProperty(final TestInformationHandler.BundleSetter bundleSetter, final Function function) {
        final Bundle bundle = new Bundle();
        runOnTISBinder(new Consumer() { // from class: com.android.quickstep.e0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                QuickstepTestInformationHandler.lambda$getTISBinderUIProperty$10(TestInformationHandler.BundleSetter.this, bundle, function, (TouchInteractionService.TISBinder) obj);
            }
        });
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$call$0(TouchInteractionService.TISBinder tISBinder) {
        enableManualTaskbarStashing(tISBinder, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$call$1(TouchInteractionService.TISBinder tISBinder) {
        enableManualTaskbarStashing(tISBinder, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$call$2(TouchInteractionService.TISBinder tISBinder) {
        enableManualTaskbarStashing(tISBinder, true);
        tISBinder.getTaskbarManager().getCurrentActivityContext().unstashTaskbarIfStashed();
        enableManualTaskbarStashing(tISBinder, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$call$3(Bundle bundle, TouchInteractionService.TISBinder tISBinder) {
        bundle.putFloat("response", tISBinder.getTaskbarManager().getCurrentActivityContext().getStashedTaskbarScale());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$call$4(TouchInteractionService.TISBinder tISBinder) {
        return Integer.valueOf(tISBinder.getTaskbarManager().getCurrentActivityContext().getTaskbarAllAppsTopPadding());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$call$5(TouchInteractionService.TISBinder tISBinder) {
        return Integer.valueOf(tISBinder.getTaskbarManager().getCurrentActivityContext().getTaskbarAllAppsScroll());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$call$6(TouchInteractionService.TISBinder tISBinder) {
        enableBlockingTimeout(tISBinder, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$call$7(TouchInteractionService.TISBinder tISBinder) {
        enableBlockingTimeout(tISBinder, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getTISBinderUIProperty$10(TestInformationHandler.BundleSetter bundleSetter, Bundle bundle, Function function, TouchInteractionService.TISBinder tISBinder) {
        bundleSetter.set(bundle, function.apply(tISBinder));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$runOnTISBinder$8(Consumer consumer, CountDownLatch countDownLatch, TouchInteractionService.TISBinder tISBinder) {
        consumer.accept(tISBinder);
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ TISBindHelper lambda$runOnTISBinder$9(final Consumer consumer, final CountDownLatch countDownLatch) {
        return new TISBindHelper(this.mContext, new Consumer() { // from class: com.android.quickstep.b0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                QuickstepTestInformationHandler.lambda$runOnTISBinder$8(consumer, countDownLatch, (TouchInteractionService.TISBinder) obj);
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.android.launcher3.testing.TestInformationHandler
    public Bundle call(String str, String str2, Bundle bundle) {
        char c4;
        final Bundle bundle2 = new Bundle();
        str.getClass();
        switch (str.hashCode()) {
            case -2011724932:
                if (str.equals("taskbar-stash-handle-scale")) {
                    c4 = 0;
                    break;
                }
                c4 = 65535;
                break;
            case -1869853332:
                if (str.equals("taskbar-apps-list-scroll-y")) {
                    c4 = 1;
                    break;
                }
                c4 = 65535;
                break;
            case -1359045783:
                if (str.equals("taskbar-all-apps-top-padding")) {
                    c4 = 2;
                    break;
                }
                c4 = 65535;
                break;
            case -1256152479:
                if (str.equals("enable-transient-taskbar")) {
                    c4 = 3;
                    break;
                }
                c4 = 65535;
                break;
            case -1157828474:
                if (str.equals("disable-transient-taskbar")) {
                    c4 = 4;
                    break;
                }
                c4 = 65535;
                break;
            case -352687499:
                if (str.equals("get-focused-task-height-for-tablet")) {
                    c4 = 5;
                    break;
                }
                c4 = 65535;
                break;
            case -251835049:
                if (str.equals("enable-block-timeout")) {
                    c4 = 6;
                    break;
                }
                c4 = 65535;
                break;
            case -238568234:
                if (str.equals("enable-taskbar-stashing")) {
                    c4 = 7;
                    break;
                }
                c4 = 65535;
                break;
            case 451177691:
                if (str.equals("background-to-overview-swipe-height")) {
                    c4 = '\b';
                    break;
                }
                c4 = 65535;
                break;
            case 599032057:
                if (str.equals("has-touch-interaction-service")) {
                    c4 = '\t';
                    break;
                }
                c4 = 65535;
                break;
            case 734434833:
                if (str.equals("disable-taskbar-stashing")) {
                    c4 = '\n';
                    break;
                }
                c4 = 65535;
                break;
            case 898000802:
                if (str.equals("get-overview-page-spacing")) {
                    c4 = 11;
                    break;
                }
                c4 = 65535;
                break;
            case 1117661823:
                if (str.equals("stashed-taskbar-height")) {
                    c4 = '\f';
                    break;
                }
                c4 = 65535;
                break;
            case 1211049546:
                if (str.equals("home-to-overview-swipe-height")) {
                    c4 = '\r';
                    break;
                }
                c4 = 65535;
                break;
            case 1724408276:
                if (str.equals("unstash-taskbar-if-stashed")) {
                    c4 = 14;
                    break;
                }
                c4 = 65535;
                break;
            case 1744024455:
                if (str.equals("shell-drag-ready")) {
                    c4 = 15;
                    break;
                }
                c4 = 65535;
                break;
            case 2119863935:
                if (str.equals("get-grid-task-size-rect-for-tablet")) {
                    c4 = 16;
                    break;
                }
                c4 = 65535;
                break;
            case 2140698108:
                if (str.equals("disable-block-timeout")) {
                    c4 = 17;
                    break;
                }
                c4 = 65535;
                break;
            default:
                c4 = 65535;
                break;
        }
        switch (c4) {
            case 0:
                runOnTISBinder(new Consumer() { // from class: com.android.quickstep.f0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r1) {
                            case 0:
                                ((QuickstepTestInformationHandler) bundle2).lambda$call$0((TouchInteractionService.TISBinder) obj);
                                return;
                            case 1:
                                ((QuickstepTestInformationHandler) bundle2).lambda$call$1((TouchInteractionService.TISBinder) obj);
                                return;
                            case 2:
                                ((QuickstepTestInformationHandler) bundle2).lambda$call$2((TouchInteractionService.TISBinder) obj);
                                return;
                            case 3:
                                ((QuickstepTestInformationHandler) bundle2).lambda$call$6((TouchInteractionService.TISBinder) obj);
                                return;
                            case 4:
                                ((QuickstepTestInformationHandler) bundle2).lambda$call$7((TouchInteractionService.TISBinder) obj);
                                return;
                            default:
                                QuickstepTestInformationHandler.lambda$call$3((Bundle) bundle2, (TouchInteractionService.TISBinder) obj);
                                return;
                        }
                    }
                });
                return bundle2;
            case 1:
                return getTISBinderUIProperty(new TestInformationHandler.BundleSetter() { // from class: com.android.quickstep.g0
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.quickstep.h0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Integer lambda$call$5;
                        Integer lambda$call$4;
                        switch (r1) {
                            case 0:
                                lambda$call$4 = QuickstepTestInformationHandler.lambda$call$4((TouchInteractionService.TISBinder) obj);
                                return lambda$call$4;
                            default:
                                lambda$call$5 = QuickstepTestInformationHandler.lambda$call$5((TouchInteractionService.TISBinder) obj);
                                return lambda$call$5;
                        }
                    }
                });
            case 2:
                return getTISBinderUIProperty(new TestInformationHandler.BundleSetter() { // from class: com.android.quickstep.g0
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.quickstep.h0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Integer lambda$call$5;
                        Integer lambda$call$4;
                        switch (r1) {
                            case 0:
                                lambda$call$4 = QuickstepTestInformationHandler.lambda$call$4((TouchInteractionService.TISBinder) obj);
                                return lambda$call$4;
                            default:
                                lambda$call$5 = QuickstepTestInformationHandler.lambda$call$5((TouchInteractionService.TISBinder) obj);
                                return lambda$call$5;
                        }
                    }
                });
            case 3:
                enableTransientTaskbar(true);
                return bundle2;
            case 4:
                enableTransientTaskbar(false);
                return bundle2;
            case 5:
                if (this.mDeviceProfile.isTablet) {
                    Rect rect = new Rect();
                    LauncherActivityInterface.INSTANCE.calculateTaskSize(this.mContext, this.mDeviceProfile, rect, PagedOrientationHandler.PORTRAIT);
                    bundle2.putInt("response", rect.height());
                    return bundle2;
                }
                return null;
            case 6:
                runOnTISBinder(new Consumer() { // from class: com.android.quickstep.f0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r1) {
                            case 0:
                                ((QuickstepTestInformationHandler) this).lambda$call$0((TouchInteractionService.TISBinder) obj);
                                return;
                            case 1:
                                ((QuickstepTestInformationHandler) this).lambda$call$1((TouchInteractionService.TISBinder) obj);
                                return;
                            case 2:
                                ((QuickstepTestInformationHandler) this).lambda$call$2((TouchInteractionService.TISBinder) obj);
                                return;
                            case 3:
                                ((QuickstepTestInformationHandler) this).lambda$call$6((TouchInteractionService.TISBinder) obj);
                                return;
                            case 4:
                                ((QuickstepTestInformationHandler) this).lambda$call$7((TouchInteractionService.TISBinder) obj);
                                return;
                            default:
                                QuickstepTestInformationHandler.lambda$call$3((Bundle) this, (TouchInteractionService.TISBinder) obj);
                                return;
                        }
                    }
                });
                return bundle2;
            case 7:
                runOnTISBinder(new Consumer() { // from class: com.android.quickstep.f0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r1) {
                            case 0:
                                ((QuickstepTestInformationHandler) this).lambda$call$0((TouchInteractionService.TISBinder) obj);
                                return;
                            case 1:
                                ((QuickstepTestInformationHandler) this).lambda$call$1((TouchInteractionService.TISBinder) obj);
                                return;
                            case 2:
                                ((QuickstepTestInformationHandler) this).lambda$call$2((TouchInteractionService.TISBinder) obj);
                                return;
                            case 3:
                                ((QuickstepTestInformationHandler) this).lambda$call$6((TouchInteractionService.TISBinder) obj);
                                return;
                            case 4:
                                ((QuickstepTestInformationHandler) this).lambda$call$7((TouchInteractionService.TISBinder) obj);
                                return;
                            default:
                                QuickstepTestInformationHandler.lambda$call$3((Bundle) this, (TouchInteractionService.TISBinder) obj);
                                return;
                        }
                    }
                });
                return bundle2;
            case '\b':
                bundle2.putInt("response", LayoutUtils.getShelfTrackingDistance(this.mContext, this.mDeviceProfile, PagedOrientationHandler.PORTRAIT));
                return bundle2;
            case '\t':
                bundle2.putBoolean("response", true);
                return bundle2;
            case '\n':
                runOnTISBinder(new Consumer() { // from class: com.android.quickstep.f0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r1) {
                            case 0:
                                ((QuickstepTestInformationHandler) this).lambda$call$0((TouchInteractionService.TISBinder) obj);
                                return;
                            case 1:
                                ((QuickstepTestInformationHandler) this).lambda$call$1((TouchInteractionService.TISBinder) obj);
                                return;
                            case 2:
                                ((QuickstepTestInformationHandler) this).lambda$call$2((TouchInteractionService.TISBinder) obj);
                                return;
                            case 3:
                                ((QuickstepTestInformationHandler) this).lambda$call$6((TouchInteractionService.TISBinder) obj);
                                return;
                            case 4:
                                ((QuickstepTestInformationHandler) this).lambda$call$7((TouchInteractionService.TISBinder) obj);
                                return;
                            default:
                                QuickstepTestInformationHandler.lambda$call$3((Bundle) this, (TouchInteractionService.TISBinder) obj);
                                return;
                        }
                    }
                });
                return bundle2;
            case 11:
                bundle2.putInt("response", this.mDeviceProfile.overviewPageSpacing);
                return bundle2;
            case '\f':
                bundle2.putInt("response", this.mContext.getResources().getDimensionPixelSize(R.dimen.taskbar_stashed_size));
                return bundle2;
            case '\r':
                bundle2.putInt("response", (int) LayoutUtils.getDefaultSwipeHeight(this.mContext, this.mDeviceProfile));
                return bundle2;
            case 14:
                runOnTISBinder(new Consumer() { // from class: com.android.quickstep.f0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r1) {
                            case 0:
                                ((QuickstepTestInformationHandler) this).lambda$call$0((TouchInteractionService.TISBinder) obj);
                                return;
                            case 1:
                                ((QuickstepTestInformationHandler) this).lambda$call$1((TouchInteractionService.TISBinder) obj);
                                return;
                            case 2:
                                ((QuickstepTestInformationHandler) this).lambda$call$2((TouchInteractionService.TISBinder) obj);
                                return;
                            case 3:
                                ((QuickstepTestInformationHandler) this).lambda$call$6((TouchInteractionService.TISBinder) obj);
                                return;
                            case 4:
                                ((QuickstepTestInformationHandler) this).lambda$call$7((TouchInteractionService.TISBinder) obj);
                                return;
                            default:
                                QuickstepTestInformationHandler.lambda$call$3((Bundle) this, (TouchInteractionService.TISBinder) obj);
                                return;
                        }
                    }
                });
                return bundle2;
            case 15:
                bundle2.putBoolean("response", ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).isDragAndDropReady());
                return bundle2;
            case 16:
                if (this.mDeviceProfile.isTablet) {
                    Rect rect2 = new Rect();
                    LauncherActivityInterface.INSTANCE.calculateGridTaskSize(this.mContext, this.mDeviceProfile, rect2, PagedOrientationHandler.PORTRAIT);
                    bundle2.putParcelable("response", rect2);
                    return bundle2;
                }
                return null;
            case 17:
                runOnTISBinder(new Consumer() { // from class: com.android.quickstep.f0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r1) {
                            case 0:
                                ((QuickstepTestInformationHandler) this).lambda$call$0((TouchInteractionService.TISBinder) obj);
                                return;
                            case 1:
                                ((QuickstepTestInformationHandler) this).lambda$call$1((TouchInteractionService.TISBinder) obj);
                                return;
                            case 2:
                                ((QuickstepTestInformationHandler) this).lambda$call$2((TouchInteractionService.TISBinder) obj);
                                return;
                            case 3:
                                ((QuickstepTestInformationHandler) this).lambda$call$6((TouchInteractionService.TISBinder) obj);
                                return;
                            case 4:
                                ((QuickstepTestInformationHandler) this).lambda$call$7((TouchInteractionService.TISBinder) obj);
                                return;
                            default:
                                QuickstepTestInformationHandler.lambda$call$3((Bundle) this, (TouchInteractionService.TISBinder) obj);
                                return;
                        }
                    }
                });
                return bundle2;
            default:
                return super.call(str, str2, bundle);
        }
    }

    @Override // com.android.launcher3.testing.TestInformationHandler
    public Activity getCurrentActivity() {
        RecentsAnimationDeviceState recentsAnimationDeviceState = new RecentsAnimationDeviceState(this.mContext);
        OverviewComponentObserver overviewComponentObserver = new OverviewComponentObserver(this.mContext, recentsAnimationDeviceState);
        try {
            return overviewComponentObserver.getActivityInterface().getCreatedActivity();
        } finally {
            overviewComponentObserver.onDestroy();
            recentsAnimationDeviceState.destroy();
        }
    }

    @Override // com.android.launcher3.testing.TestInformationHandler
    public boolean isLauncherInitialized() {
        return super.isLauncherInitialized() && TouchInteractionService.isInitialized();
    }

    public void runOnTISBinder(final Consumer consumer) {
        try {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
            final TISBindHelper tISBindHelper = (TISBindHelper) looperExecutor.submit(new Callable() { // from class: com.android.quickstep.c0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    TISBindHelper lambda$runOnTISBinder$9;
                    lambda$runOnTISBinder$9 = QuickstepTestInformationHandler.this.lambda$runOnTISBinder$9(consumer, countDownLatch);
                    return lambda$runOnTISBinder$9;
                }
            }).get();
            countDownLatch.await();
            Objects.requireNonNull(tISBindHelper);
            looperExecutor.execute(new Runnable() { // from class: com.android.quickstep.d0
                @Override // java.lang.Runnable
                public final void run() {
                    TISBindHelper.this.onDestroy();
                }
            });
        } catch (InterruptedException | ExecutionException e4) {
            throw new RuntimeException(e4);
        }
    }
}
