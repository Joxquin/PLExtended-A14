.class final Lcom/android/launcher3/util/VibratorWrapper$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/VibratorWrapper;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper$1;->this$0:Lcom/android/launcher3/util/VibratorWrapper;

    iput-object p3, p0, Lcom/android/launcher3/util/VibratorWrapper$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper$1;->this$0:Lcom/android/launcher3/util/VibratorWrapper;

    iget-object p0, p0, Lcom/android/launcher3/util/VibratorWrapper$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {p1, p0}, Lcom/android/launcher3/util/VibratorWrapper;->e(Lcom/android/launcher3/util/VibratorWrapper;Landroid/content/ContentResolver;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/util/VibratorWrapper;->d(Lcom/android/launcher3/util/VibratorWrapper;Z)V

    return-void
.end method
