.class public final synthetic Lcom/android/launcher3/views/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Ljava/lang/Runnable;

.field public final synthetic e:Lcom/android/launcher3/views/Snackbar;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/u;->d:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/launcher3/views/u;->e:Lcom/android/launcher3/views/Snackbar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/views/u;->d:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/launcher3/views/u;->e:Lcom/android/launcher3/views/Snackbar;

    invoke-static {p1, p0}, Lcom/android/launcher3/views/Snackbar;->a(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;)V

    return-void
.end method
