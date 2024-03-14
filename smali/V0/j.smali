.class public final synthetic LV0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV0/j;->d:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, LV0/j;->d:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-static {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->d(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
