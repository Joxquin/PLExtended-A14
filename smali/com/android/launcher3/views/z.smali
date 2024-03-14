.class public final synthetic Lcom/android/launcher3/views/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/views/WidgetsEduView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/WidgetsEduView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/z;->d:Lcom/android/launcher3/views/WidgetsEduView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/z;->d:Lcom/android/launcher3/views/WidgetsEduView;

    sget p1, Lcom/android/launcher3/views/WidgetsEduView;->d:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method
