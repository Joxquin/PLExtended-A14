package com.android.launcher3;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.Person;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.os.TransactionTooLargeException;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TtsSpan;
import android.util.Log;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import com.android.launcher3.dragndrop.FolderAdaptiveIcon;
import com.android.launcher3.graphics.TintedDrawableSpan;
import com.android.launcher3.icons.ShortcutCachingLogic;
import com.android.launcher3.icons.ThemedIconDrawable;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.systemui.shared.R;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class Utilities {
    private static final Pattern sTrimPattern = Pattern.compile("^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$");
    private static final Matrix sMatrix = new Matrix();
    private static final Matrix sInverseMatrix = new Matrix();
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final Person[] EMPTY_PERSON_ARRAY = new Person[0];
    public static final boolean ATLEAST_P = true;
    public static final boolean ATLEAST_Q = true;
    public static final boolean ATLEAST_R = true;
    public static final boolean ATLEAST_S = true;
    public static final boolean ATLEAST_T = true;
    public static final boolean ATLEAST_U = true;
    private static boolean sIsRunningInTestHarness = ActivityManager.isRunningInTestHarness();

    public static void allowBGLaunch(ActivityOptions activityOptions) {
        if (ATLEAST_U) {
            activityOptions.setPendingIntentBackgroundActivityStartMode(1);
        }
    }

    public static int boundToRange(int i4, int i5, int i6) {
        return Math.max(i5, Math.min(i4, i6));
    }

    public static int calculateTextHeight(float f4) {
        Paint paint = new Paint();
        paint.setTextSize(f4);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return (int) Math.ceil(fontMetrics.bottom - fontMetrics.top);
    }

    public static String createDbSelectionQuery(String str, IntArray intArray) {
        return String.format(Locale.ENGLISH, "%s IN (%s)", str, intArray.toConcatString());
    }

    public static int dpToPx(float f4) {
        return (int) (f4 * Resources.getSystem().getDisplayMetrics().density);
    }

    public static Drawable getBadge(Context context, ItemInfo itemInfo, Object obj, boolean z4) {
        LauncherAppState launcherAppState = LauncherAppState.getInstance(context);
        int i4 = itemInfo.itemType;
        if (i4 != 6) {
            if (i4 == 2) {
                return ((FolderAdaptiveIcon) obj).getBadge();
            }
            if (Process.myUserHandle().equals(itemInfo.user)) {
                return new ColorDrawable(0);
            }
            return context.getDrawable(z4 ? R.drawable.ic_work_app_badge_themed : R.drawable.ic_work_app_badge);
        }
        boolean z5 = (itemInfo instanceof ItemInfoWithIcon) && (((ItemInfoWithIcon) itemInfo).runtimeStatusFlags & 512) > 0;
        if ((itemInfo.id != -1 || z5) && (obj instanceof ShortcutInfo)) {
            return LauncherAppState.getInstance(launcherAppState.getContext()).getIconCache().getShortcutInfoBadgeItem((ShortcutInfo) obj).bitmap.newIcon(1, context);
        }
        return new ColorDrawable(0);
    }

    public static void getBoundsForViewInDragLayer(BaseDragLayer baseDragLayer, View view, Rect rect, boolean z4, RectF rectF) {
        float[] fArr = {rect.left, rect.top, rect.right, rect.bottom};
        getDescendantCoordRelativeToAncestor(view, baseDragLayer, fArr, false, z4);
        rectF.set(Math.min(fArr[0], fArr[2]), Math.min(fArr[1], fArr[3]), Math.max(fArr[0], fArr[2]), Math.max(fArr[1], fArr[3]));
    }

    public static float getDescendantCoordRelativeToAncestor(View view, View view2, float[] fArr, boolean z4, boolean z5) {
        float f4 = 1.0f;
        View view3 = view;
        while (view3 != view2 && view3 != null) {
            if (view3 != view || z4) {
                float f5 = -view3.getScrollX();
                float f6 = -view3.getScrollY();
                for (int i4 = 0; i4 < fArr.length; i4 += 2) {
                    fArr[i4] = fArr[i4] + f5;
                    int i5 = i4 + 1;
                    fArr[i5] = fArr[i5] + f6;
                }
            }
            if (!z5) {
                view3.getMatrix().mapPoints(fArr);
            }
            float left = view3.getLeft();
            float top = view3.getTop();
            for (int i6 = 0; i6 < fArr.length; i6 += 2) {
                fArr[i6] = fArr[i6] + left;
                int i7 = i6 + 1;
                fArr[i7] = fArr[i7] + top;
            }
            f4 *= view3.getScaleX();
            view3 = view3.getParent() instanceof View ? (View) view3.getParent() : null;
        }
        return f4;
    }

    public static Drawable getFullDrawable(Context context, ItemInfo itemInfo, int i4, int i5, boolean z4, Object[] objArr, boolean[] zArr) {
        Drawable newIcon;
        Drawable monochrome;
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(context);
        LauncherAppState launcherAppState = LauncherAppState.getInstance(context);
        if (itemInfo instanceof PendingAddShortcutInfo) {
            ShortcutConfigActivityInfo activityInfo = ((PendingAddShortcutInfo) itemInfo).getActivityInfo(context);
            objArr[0] = activityInfo;
            newIcon = activityInfo.getFullResIcon(launcherAppState.getIconCache());
        } else {
            int i6 = itemInfo.itemType;
            if (i6 == 0) {
                LauncherActivityInfo resolveActivity = ((LauncherApps) context.getSystemService(LauncherApps.class)).resolveActivity(itemInfo.getIntent(), itemInfo.user);
                objArr[0] = resolveActivity;
                if (resolveActivity != null) {
                    newIcon = LauncherAppState.getInstance(context).getIconProvider().getIcon(resolveActivity, activityContext.getDeviceProfile().inv.fillResIconDpi);
                }
                newIcon = null;
            } else if (i6 == 6) {
                ShortcutKey fromItemInfo = ShortcutKey.fromItemInfo(itemInfo);
                ShortcutRequest shortcutRequest = new ShortcutRequest(context, fromItemInfo.user);
                ComponentName componentName = fromItemInfo.componentName;
                shortcutRequest.forPackage(componentName.getPackageName(), Arrays.asList(componentName.getClassName()));
                ShortcutRequest.QueryResult query = shortcutRequest.query(11);
                if (!query.isEmpty()) {
                    objArr[0] = query.get(0);
                    newIcon = ShortcutCachingLogic.getIcon(context, (ShortcutInfo) query.get(0), launcherAppState.getInvariantDeviceProfile().fillResIconDpi);
                }
                newIcon = null;
            } else if (i6 == 2) {
                newIcon = FolderAdaptiveIcon.createFolderAdaptiveIcon(activityContext, itemInfo.id, new Point(i4, i5));
                if (newIcon != null) {
                    objArr[0] = newIcon;
                }
                newIcon = null;
            } else {
                if (i6 == 9 && (itemInfo instanceof ItemInfoWithIcon)) {
                    newIcon = ((ItemInfoWithIcon) itemInfo).bitmap.newIcon(0, context);
                }
                newIcon = null;
            }
        }
        if (ATLEAST_T && (newIcon instanceof AdaptiveIconDrawable) && z4 && (monochrome = ((AdaptiveIconDrawable) newIcon.mutate()).getMonochrome()) != null && Themes.isThemedIconEnabled(context)) {
            zArr[0] = true;
            int[] colors = ThemedIconDrawable.getColors(context);
            Drawable mutate = monochrome.mutate();
            mutate.setTint(colors[1]);
            return new AdaptiveIconDrawable(new ColorDrawable(colors[0]), mutate);
        }
        return newIcon;
    }

    public static float getProgress(float f4, float f5, float f6) {
        return Math.abs(f4 - f5) / Math.abs(f6 - f5);
    }

    public static String getSystemProperty(String str, String str2) {
        String str3;
        try {
            str3 = (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str);
        } catch (Exception unused) {
            Log.d("Launcher.Utilities", "Unable to read system properties");
        }
        return !TextUtils.isEmpty(str3) ? str3 : str2;
    }

    public static Rect getViewBounds(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i4 = iArr[0];
        return new Rect(i4, iArr[1], view.getWidth() + i4, view.getHeight() + iArr[1]);
    }

    public static boolean isBinderSizeError(Exception exc) {
        return (exc.getCause() instanceof TransactionTooLargeException) || (exc.getCause() instanceof DeadObjectException);
    }

    public static boolean isDarkTheme(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static boolean isRtl(Resources resources) {
        return resources.getConfiguration().getLayoutDirection() == 1;
    }

    public static boolean isRunningInTestHarness() {
        return sIsRunningInTestHarness;
    }

    public static ColorFilter makeColorTintingColorFilter(float f4, int i4) {
        if (f4 == 0.0f) {
            return null;
        }
        return new LightingColorFilter(E.a.d(-1, 0, f4), E.a.d(0, i4, f4));
    }

    public static float mapBoundToRange(float f4, float f5, float f6, float f7, float f8, Interpolator interpolator) {
        return mapToRange(boundToRange(f4, f5, f6), f5, f6, f7, f8, interpolator);
    }

    public static void mapCoordInSelfToDescendant(View view, View view2, float[] fArr) {
        Matrix matrix = sMatrix;
        matrix.reset();
        while (view != view2) {
            matrix.postTranslate(-view.getScrollX(), -view.getScrollY());
            matrix.postConcat(view.getMatrix());
            matrix.postTranslate(view.getLeft(), view.getTop());
            view = (View) view.getParent();
        }
        matrix.postTranslate(-view.getScrollX(), -view.getScrollY());
        Matrix matrix2 = sInverseMatrix;
        matrix.invert(matrix2);
        matrix2.mapPoints(fArr);
    }

    public static float mapToRange(float f4, float f5, float f6, float f7, float f8, Interpolator interpolator) {
        if (f5 == f6 || f7 == f8) {
            Log.e("Launcher.Utilities", "mapToRange: range has 0 length");
            return f7;
        }
        return w.f.a(f8, f7, interpolator.getInterpolation(getProgress(f4, f5, f6)), f7);
    }

    public static boolean pointInView(View view, float f4, float f5, float f6) {
        float f7 = -f6;
        return f4 >= f7 && f5 >= f7 && f4 < ((float) view.getWidth()) + f6 && f5 < ((float) view.getHeight()) + f6;
    }

    public static void postAsyncCallback(Handler handler, Runnable runnable) {
        Message obtain = Message.obtain(handler, runnable);
        obtain.setAsynchronous(true);
        handler.sendMessage(obtain);
    }

    public static CharSequence prefixTextWithIcon(Context context, int i4, CharSequence charSequence) {
        SpannableString spannableString = new SpannableString("  " + ((Object) charSequence));
        spannableString.setSpan(new TintedDrawableSpan(i4, context), 0, 1, 34);
        return spannableString;
    }

    public static void rotateBounds(Rect rect, int i4, int i5, int i6) {
        int i7 = ((i6 % 4) + 4) % 4;
        int i8 = rect.left;
        if (i7 == 1) {
            rect.left = rect.top;
            rect.top = i4 - rect.right;
            rect.right = rect.bottom;
            rect.bottom = i4 - i8;
        } else if (i7 == 2) {
            rect.left = i4 - rect.right;
            rect.right = i4 - i8;
        } else if (i7 != 3) {
        } else {
            rect.left = i5 - rect.bottom;
            rect.bottom = rect.right;
            rect.right = i5 - rect.top;
            rect.top = i8;
        }
    }

    public static void scaleRectAboutCenter(Rect rect, float f4) {
        if (f4 != 1.0f) {
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            rect.left = Math.round(((rect.left - exactCenterX) * f4) + exactCenterX);
            rect.top = Math.round(((rect.top - exactCenterY) * f4) + exactCenterY);
            rect.right = Math.round(((rect.right - exactCenterX) * f4) + exactCenterX);
            rect.bottom = Math.round(((rect.bottom - exactCenterY) * f4) + exactCenterY);
        }
    }

    public static void scaleRectFAboutCenter(RectF rectF, float f4, float f5) {
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        rectF.offset(-centerX, -centerY);
        rectF.left *= f4;
        rectF.top *= f5;
        rectF.right *= f4;
        rectF.bottom *= f5;
        rectF.offset(centerX, centerY);
    }

    public static float shrinkRect(Rect rect, float f4, float f5) {
        float min = Math.min(Math.min(f4, f5), 1.0f);
        if (min < 1.0f) {
            int width = (int) ((f4 - min) * rect.width() * 0.5f);
            rect.left += width;
            rect.right -= width;
            int height = (int) ((f5 - min) * rect.height() * 0.5f);
            rect.top += height;
            rect.bottom -= height;
        }
        return min;
    }

    public static float squaredTouchSlop(Context context) {
        float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        return scaledTouchSlop * scaledTouchSlop;
    }

    public static String trim(CharSequence charSequence) {
        return charSequence == null ? "" : sTrimPattern.matcher(charSequence).replaceAll("$1");
    }

    public static CharSequence wrapForTts(CharSequence charSequence, String str) {
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TtsSpan.TextBuilder(str).build(), 0, spannableString.length(), 18);
        return spannableString;
    }

    public static float boundToRange(float f4, float f5, float f6) {
        return Math.max(f5, Math.min(f4, f6));
    }
}
