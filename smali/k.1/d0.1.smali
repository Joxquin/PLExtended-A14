.class public final Lk/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/graphics/Typeface;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0

    iput-object p1, p0, Lk/d0;->d:Landroid/widget/TextView;

    iput-object p2, p0, Lk/d0;->e:Landroid/graphics/Typeface;

    iput p3, p0, Lk/d0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk/d0;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lk/d0;->e:Landroid/graphics/Typeface;

    iget p0, p0, Lk/d0;->f:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
