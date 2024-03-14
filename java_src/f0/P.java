package f0;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.format.DateUtils;
import java.util.Calendar;
/* loaded from: classes.dex */
public final class P {
    public static Bitmap a(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }

    public static int b(int i4, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i4});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        return color;
    }

    public static Drawable c(int i4, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i4});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    public static CharSequence d(Context context, long j4) {
        return (j4 < System.currentTimeMillis() || DateUtils.isToday(j4)) ? DateUtils.getRelativeTimeSpanString(j4, Calendar.getInstance().getTimeInMillis(), 60000L, 262144) : DateUtils.formatDateTime(context, j4, 8);
    }
}
