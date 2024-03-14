.class public final synthetic Lcom/android/launcher3/testing/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/testing/d;->a:I

    iput-object p2, p0, Lcom/android/launcher3/testing/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/testing/d;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/testing/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler;

    invoke-virtual {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/testing/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler;

    invoke-virtual {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/testing/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
