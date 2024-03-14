package com.google.android.apps.nexuslauncher.allapps;

import android.graphics.PointF;
import android.os.Looper;
import android.view.Choreographer;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.launcher3.ExtendedEditText;
import com.android.quickstep.util.CachedEventDispatcher;
import com.android.systemui.shared.system.InputChannelCompat;
import com.android.systemui.shared.system.InputMonitorCompat;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import java.util.Objects;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class O extends L {

    /* renamed from: b  reason: collision with root package name */
    public final NexusLauncherActivity f6645b;

    /* renamed from: c  reason: collision with root package name */
    public final float f6646c;

    /* renamed from: f  reason: collision with root package name */
    public InputMonitorCompat f6649f;

    /* renamed from: g  reason: collision with root package name */
    public InputChannelCompat.InputEventReceiver f6650g;

    /* renamed from: h  reason: collision with root package name */
    public CachedEventDispatcher f6651h;

    /* renamed from: d  reason: collision with root package name */
    public final PointF f6647d = new PointF();

    /* renamed from: e  reason: collision with root package name */
    public int f6648e = 0;

    /* renamed from: i  reason: collision with root package name */
    public boolean f6652i = false;

    public O(NexusLauncherActivity nexusLauncherActivity) {
        this.f6645b = nexusLauncherActivity;
        this.f6646c = ViewConfiguration.get(nexusLauncherActivity).getScaledTouchSlop();
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.L
    public final void a(int i4) {
        if (this.f6648e >= i4) {
            return;
        }
        if (i4 == 1) {
            this.f6649f = new InputMonitorCompat("all-apps-capture", this.f6645b.getDisplayId());
        } else if (i4 != 2) {
            if (i4 == 3) {
                if (this.f6652i) {
                    return;
                }
                InputChannelCompat.InputEventReceiver inputEventReceiver = this.f6650g;
                if (inputEventReceiver != null) {
                    inputEventReceiver.dispose();
                    this.f6650g = null;
                }
                InputMonitorCompat inputMonitorCompat = this.f6649f;
                if (inputMonitorCompat != null) {
                    inputMonitorCompat.dispose();
                    this.f6649f = null;
                }
                CachedEventDispatcher cachedEventDispatcher = this.f6651h;
                if (cachedEventDispatcher != null) {
                    if (!cachedEventDispatcher.hasConsumer()) {
                        this.f6651h.setConsumer(P.f6667h);
                    }
                    this.f6651h = null;
                }
            }
        } else if (this.f6649f == null) {
            a(3);
            return;
        } else {
            this.f6651h = new CachedEventDispatcher();
            InputChannelCompat.InputEventReceiver inputReceiver = this.f6649f.getInputReceiver(Looper.getMainLooper(), Choreographer.getInstance(), new InputChannelCompat.InputEventListener() { // from class: com.google.android.apps.nexuslauncher.allapps.M
                @Override // com.android.systemui.shared.system.InputChannelCompat.InputEventListener
                public final void onInputEvent(InputEvent inputEvent) {
                    O o4 = O.this;
                    if (o4.f6651h == null || !(inputEvent instanceof MotionEvent)) {
                        o4.a(3);
                        return;
                    }
                    MotionEvent motionEvent = (MotionEvent) inputEvent;
                    int action = motionEvent.getAction();
                    final NexusLauncherActivity nexusLauncherActivity = o4.f6645b;
                    if (action == 0 && !o4.f6652i) {
                        if (motionEvent.getY() < nexusLauncherActivity.getDeviceProfile().heightPx - o4.f6615a) {
                            o4.a(3);
                            return;
                        }
                        o4.f6652i = true;
                    }
                    if (o4.f6652i) {
                        o4.f6651h.dispatchEvent(motionEvent);
                        int actionMasked = motionEvent.getActionMasked();
                        PointF pointF = o4.f6647d;
                        if (actionMasked == 0) {
                            pointF.set(motionEvent.getX(), motionEvent.getY());
                            o4.f6652i = true;
                            return;
                        }
                        if (actionMasked != 1) {
                            if (actionMasked == 2) {
                                if (o4.f6651h.hasConsumer()) {
                                    return;
                                }
                                float abs = Math.abs(motionEvent.getX() - pointF.x);
                                float abs2 = Math.abs(motionEvent.getY() - pointF.y);
                                if (Math.max(abs, abs2) > o4.f6646c) {
                                    if (abs2 <= abs) {
                                        o4.f6651h.setConsumer(P.f6667h);
                                        return;
                                    }
                                    o4.f6649f.pilferPointers();
                                    CachedEventDispatcher cachedEventDispatcher2 = o4.f6651h;
                                    Objects.requireNonNull(nexusLauncherActivity);
                                    cachedEventDispatcher2.setConsumer(new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.N
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj) {
                                            NexusLauncherActivity.this.dispatchTouchEvent((MotionEvent) obj);
                                        }
                                    });
                                    ExtendedEditText editText = nexusLauncherActivity.getAppsView().getSearchUiManager().getEditText();
                                    editText.hideKeyboard();
                                    editText.reset();
                                    return;
                                }
                                return;
                            } else if (actionMasked != 3) {
                                return;
                            }
                        }
                        o4.f6652i = false;
                        o4.a(3);
                    }
                }
            });
            this.f6650g = inputReceiver;
            inputReceiver.setBatchingEnabled(true);
        }
        this.f6648e = i4;
    }
}
