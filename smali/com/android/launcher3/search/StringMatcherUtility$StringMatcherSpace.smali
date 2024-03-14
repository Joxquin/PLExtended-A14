.class public final Lcom/android/launcher3/search/StringMatcherUtility$StringMatcherSpace;
.super Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
.source "SourceFile"


# virtual methods
.method public final isBreak(III)Z
    .locals 0

    if-eqz p2, :cond_1

    const/16 p0, 0xc

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
