.class public final Lf0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final a:Landroidx/slice/SliceItem;

.field public final b:I

.field public final synthetic c:Landroidx/slice/widget/GridRowView;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/GridRowView;Landroidx/slice/SliceItem;I)V
    .locals 0

    iput-object p1, p0, Lf0/i;->c:Landroidx/slice/widget/GridRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf0/i;->a:Landroidx/slice/SliceItem;

    iput p3, p0, Lf0/i;->b:I

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Date;->setHours(I)V

    invoke-virtual {p1, p3}, Ljava/util/Date;->setMinutes(I)V

    iget-object p2, p0, Lf0/i;->a:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p3, p0, Lf0/i;->c:Landroidx/slice/widget/GridRowView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.slice.extra.RANGE_VALUE"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroidx/slice/SliceItem;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    iget-object p1, p0, Lf0/i;->c:Landroidx/slice/widget/GridRowView;

    iget-object p2, p1, Lf0/F;->d:Lf0/M;

    if-eqz p2, :cond_0

    new-instance p2, Lf0/c;

    invoke-virtual {p1}, Lf0/F;->b()I

    move-result p1

    iget p3, p0, Lf0/i;->b:I

    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-direct {p2, p1, v0, v1, p3}, Lf0/c;-><init>(IIII)V

    iget-object p1, p0, Lf0/i;->c:Landroidx/slice/widget/GridRowView;

    iget-object p1, p1, Lf0/F;->d:Lf0/M;

    iget-object p0, p0, Lf0/i;->a:Landroidx/slice/SliceItem;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k(Landroidx/slice/SliceItem;Lf0/c;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GridRowView"

    const-string p2, "PendingIntent for slice cannot be sent"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
