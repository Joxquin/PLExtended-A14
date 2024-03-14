.class public final synthetic Lcom/android/launcher3/taskbar/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/d;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    instance-of p0, p1, Lcom/android/quickstep/util/DesktopTask;

    xor-int/lit8 p0, p0, 0x1

    return p0

    :goto_0
    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    instance-of p0, p1, Lcom/android/quickstep/util/DesktopTask;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
