.class public final synthetic Lcom/android/launcher3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/CheckLongPressHelper;

.field public final synthetic e:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/CheckLongPressHelper;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/n;->d:Lcom/android/launcher3/CheckLongPressHelper;

    iput-object p2, p0, Lcom/android/launcher3/n;->e:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/n;->d:Lcom/android/launcher3/CheckLongPressHelper;

    iget-object p0, p0, Lcom/android/launcher3/n;->e:Landroid/view/MotionEvent;

    invoke-static {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;->b(Lcom/android/launcher3/CheckLongPressHelper;Landroid/view/MotionEvent;)V

    return-void
.end method
