package com.android.systemui.shared.recents.view;

import android.app.ActivityOptions;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.os.Bundle;
import android.os.Handler;
import android.os.IRemoteCallback;
import android.view.View;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class RecentsTransition {
    public static ActivityOptions createAspectScaleAnimation(Context context, Handler handler, boolean z4, AppTransitionAnimationSpecsFuture appTransitionAnimationSpecsFuture, final Runnable runnable) {
        return ActivityOptions.makeMultiThumbFutureAspectScaleAnimation(context, handler, appTransitionAnimationSpecsFuture != null ? appTransitionAnimationSpecsFuture.getFuture() : null, new ActivityOptions.OnAnimationStartedListener() { // from class: com.android.systemui.shared.recents.view.RecentsTransition.1
            private boolean mHandled;

            public void onAnimationStarted(long j4) {
                if (this.mHandled) {
                    return;
                }
                this.mHandled = true;
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }, z4);
    }

    public static Bitmap createHardwareBitmap(int i4, int i5, Consumer consumer) {
        Picture picture = new Picture();
        consumer.accept(picture.beginRecording(i4, i5));
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }

    public static Bitmap drawViewIntoHardwareBitmap(int i4, int i5, final View view, final float f4, final int i6) {
        return createHardwareBitmap(i4, i5, new Consumer() { // from class: com.android.systemui.shared.recents.view.RecentsTransition.3
            @Override // java.util.function.Consumer
            public void accept(Canvas canvas) {
                float f5 = f4;
                canvas.scale(f5, f5);
                int i7 = i6;
                if (i7 != 0) {
                    canvas.drawColor(i7);
                }
                View view2 = view;
                if (view2 != null) {
                    view2.draw(canvas);
                }
            }
        });
    }

    public static IRemoteCallback wrapStartedListener(final Handler handler, final Runnable runnable) {
        if (runnable == null) {
            return null;
        }
        return new IRemoteCallback.Stub() { // from class: com.android.systemui.shared.recents.view.RecentsTransition.2
            public void sendResult(Bundle bundle) {
                handler.post(runnable);
            }
        };
    }
}
