.class public final Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clickListener:Landroid/view/View$OnLongClickListener;

.field public final eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final label:Ljava/lang/CharSequence;

.field public final labelRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->labelRes:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->label:Ljava/lang/CharSequence;

    .line 4
    sget-object p2, LB/c;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object p4, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 8
    iput-object p5, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->clickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->labelRes:I

    .line 11
    iput-object p1, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->label:Ljava/lang/CharSequence;

    .line 12
    iput-object p2, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object p3, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 14
    iput-object p4, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->clickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method
